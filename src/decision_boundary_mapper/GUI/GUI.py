# Copyright 2023 Cristian Grosu
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import os
from shutil import rmtree
import matplotlib.pyplot as plt
import PySimpleGUI as sg
import numpy as np
from PIL import Image, ImageTk
import tensorflow as tf
from tensorflow.keras.utils import plot_model

from .DBMPlotterGUI import DBMPlotterGUI
from ..Logger import LoggerGUI, Logger
from ..DBM import SDBM, DBM
from ..utils import import_csv_dataset, import_mnist_dataset

sg.theme('DarkBlue1')
TITLE = "Classifiers visualization tool"
WINDOW_SIZE = (1150, 650)
BLACK_COLOR = "#252526"
BUTTON_PRIMARY_COLOR = "#007acc"
WHITE_COLOR = "#ffffff"
RIGHTS_MESSAGE = "© 2023 Cristian Grosu. All rights reserved."
RIGHTS_MESSAGE_2 = "Made by Cristian Grosu for Utrecht University Master Thesis in 2023"

DEFAULT_DBM_IMAGE_PATH = os.path.join(os.getcwd(), "results", "MNIST", "2D_boundary_mapping.png") # unused
TMP_FOLDER = os.path.join(os.getcwd(), "tmp")

SAMPLES_LIMIT = 5000 # Limit the number of samples to be loaded from the dataset

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2' # Disable tensorflow logs

"""
0 = all messages are logged (default behavior)
1 = INFO messages are not printed
2 = INFO and WARNING messages are not printed
3 = INFO, WARNING, and ERROR messages are not printed
"""

DBM_TECHNIQUES = {
    "Autoencoder": SDBM,
    "Inverse Projection": DBM,
}

PROJECTION_TECHNIQUES = [
    "t-SNE",
    "UMAP",
    "PCA",
]

class GUI:
    def __init__(self):
        self.create_tmp_folder()
        self.window = self.build()
        self.logger = Logger(name = "GUI")
            
        # --------------- DBM ---------------
        self.dbm_plotter_gui = None
        self.dbm_logger = LoggerGUI(name = "DBM logger", output = self.window["-LOGGER-"], update_callback = self.window.refresh)
    
    def create_tmp_folder(self):
        if not os.path.exists(TMP_FOLDER):
            os.makedirs(TMP_FOLDER)
    
    def remove_tmp_folder(self):
        if os.path.exists(TMP_FOLDER):
            rmtree(TMP_FOLDER)
        
    def upload_classifier(self):
        self.classifier = tf.keras.models.Sequential([
            tf.keras.layers.Flatten(),
            tf.keras.layers.Dense(self.num_classes, activation=tf.nn.softmax)
        ], name="classifier")
        input_shape = self.X_train.shape[1:]
        input_shape = (None, *input_shape)
        self.classifier.build(input_shape=input_shape)
        file = os.path.join(TMP_FOLDER, "classifier.png")
        plot_model(self.classifier, to_file=file, show_shapes=True, show_layer_names=True, show_layer_activations=True)    
        img = Image.open(file)
        
        img.thumbnail((256, 256), Image.ANTIALIAS)           
        image = ImageTk.PhotoImage(img)     
        self.window["-CLASSIFIER IMAGE-"].update(data = image)
        self.switch_visibility(["-CLASSIFIER IMAGE-", "-CLASSIFIER TEXT-"], True)
        self.window.refresh()
    
    def build(self):
        window = sg.Window(TITLE, 
                           layout=self._get_layout(), 
                           size=WINDOW_SIZE,                            
                           resizable=False,
                           )
        window.finalize()
        return window
        
    def start(self):
        while True:
            event, values = self.window.read()
            
            if event == "Exit" or event == sg.WIN_CLOSED:
                break
            
            self.handle_event(event, values)
        
        self.stop()
    
    def stop(self):
        #self.logger.log("Removing tmp folder...")
        #self.remove_tmp_folder()
        self.logger.log("Closing the application...")
        self.window.close()
    
    def handle_event(self, event, values):        
        # Folder name was filled in, make a list of files in the folder
        EVENTS = {
            "-FOLDER-": self.handle_select_folder_event,
            "-FILE LIST-": self.handle_file_list_event,
            "-DBM TECHNIQUE-": self.handle_dbm_technique_event,
            "-DBM BTN-": self.handle_get_decision_boundary_mapping_event,
            "-DBM IMAGE-": self.handle_dbm_image_event,
            "-PROJECTION TECHNIQUE-": self.handle_projection_technique_event,
            "-UPLOAD TRAIN DATA BTN-": self.handle_upload_train_data_event,
            "-UPLOAD TEST DATA BTN-": self.handle_upload_test_data_event,
            "-UPLOAD MNIST DATA BTN-": self.handle_upload_mnist_data_event,
        }
        
        EVENTS[event](event, values)
        
    def _get_layout(self):                
        data_files_list_column = [
            [
                sg.Text(text = "Data Folder"),
                sg.In(enable_events=True, key="-FOLDER-", background_color=WHITE_COLOR, text_color=BLACK_COLOR, expand_x=True),
                sg.FolderBrowse(button_text="Browse folder", button_color=(WHITE_COLOR, BUTTON_PRIMARY_COLOR), initial_folder=os.getcwd()),
            ],
            [
               sg.Text("Choose the data file from the list: ", expand_x=True),
            ],
            [   
               sg.Text(key="-TOUT-", expand_x=True),            
            ],
            [
                sg.Listbox(
                    values=[], enable_events=True, key="-FILE LIST-", background_color=WHITE_COLOR, text_color=BLACK_COLOR, expand_x=True, expand_y=True
                )
            ],
            [
                sg.Button("Upload train data for DBM", button_color=(WHITE_COLOR, BUTTON_PRIMARY_COLOR), expand_x=True, key = "-UPLOAD TRAIN DATA BTN-"),
                sg.Button("Upload test data for DBM", button_color=(WHITE_COLOR, BUTTON_PRIMARY_COLOR), expand_x=True, key = "-UPLOAD TEST DATA BTN-"),
            ],
            [   
               sg.Text("Training data file: ", key="-TRAIN DATA FILE-",  expand_x=True),            
            ],
            [   
               sg.Text("Training data shape: ", key="-TRAIN DATA SHAPE-", expand_x=True),            
            ],
            [   
               sg.Text("Testing data file: ", key="-TEST DATA FILE-", expand_x=True),            
            ],
            [   
               sg.Text("Testing data shape: ", key="-TEST DATA SHAPE-", expand_x=True),            
            ],
            [
                sg.Button("Upload MNIST Data set", button_color=(WHITE_COLOR, BUTTON_PRIMARY_COLOR), expand_x=True, key = "-UPLOAD MNIST DATA BTN-"),
            ],
            [
                sg.Button("Show the Decision Boundary Mapping", button_color=(WHITE_COLOR, BUTTON_PRIMARY_COLOR), expand_x=True, key = "-DBM BTN-"),
            ],
            [
                sg.Text("", expand_x=True)    
            ],
            [
                sg.Text(RIGHTS_MESSAGE, expand_x=True),
            ],
            [
                sg.Text(RIGHTS_MESSAGE_2, expand_x=True),
            ]
        ]
        
        results_column = [
            [
                sg.Text("Which dbm technique would you like to use?", size=(45,1)),
                sg.Combo(
                    values=list(DBM_TECHNIQUES.keys()),
                    default_value=list(DBM_TECHNIQUES.keys())[0],
                    expand_x=True,
                    key="-DBM TECHNIQUE-",
                    enable_events=True,
                    background_color=WHITE_COLOR, text_color=BLACK_COLOR,
                ),
            ],
            [
                sg.Text("Which Projection technique would you like to use?", size=(45,1), key="-PROJECTION TECHNIQUE TEXT-", visible=False),
                sg.Combo(
                    values = PROJECTION_TECHNIQUES,
                    default_value = PROJECTION_TECHNIQUES[0],
                    expand_x=True,
                    key="-PROJECTION TECHNIQUE-",
                    enable_events=True,
                    visible=False,
                    background_color=WHITE_COLOR, text_color=BLACK_COLOR,
                ),
            ],
            [
                sg.Text("Use the fast algorithm for generating the Decision Boundary Mapper: ", expand_x=True, key="-USE FAST DBM TEXT-", visible=True),
                sg.Checkbox("", default=False,  key="-USE FAST DBM CHECKBOX-", visible=True),
            ],            
            [
                sg.Text("Show Decision Boundary Mapper NN history: ", expand_x=True, key="-DBM HISTORY TEXT-", visible=True),
                sg.Checkbox("", default=False,  key="-DBM HISTORY CHECKBOX-", visible=True),
            ],
            # ---------------------------------------------------------------------------------------------------                        
            [
                sg.Column([
                    [sg.Text("Classifier: ",  visible=False, expand_x=True, key="-CLASSIFIER TEXT-", justification='center')],
                    [sg.Image(key="-CLASSIFIER IMAGE-", expand_x=True, expand_y=True, visible=False, enable_events=True)],                           
                ], expand_x=True),
                sg.Column([
                    [sg.Text("Decision boundary map: ", visible=False, expand_x=True, key="-DBM TEXT-", justification='center')],
                    [sg.Text("Loading... ",  visible=False, expand_x=True, key="-DBM IMAGE LOADING-", justification='center')],
                    [sg.Image(key="-DBM IMAGE-", visible=False, expand_x=True, expand_y=True, enable_events=True)],                                           
                ], expand_x=True),
            ],            
            [
                sg.HSeparator(),
            ],
            [
                sg.Column([
                    [sg.Text("Logger: ")],
                    [sg.Multiline("",expand_x=True, expand_y=True, key="-LOGGER-", background_color=WHITE_COLOR, text_color=BLACK_COLOR, auto_size_text=True)],   
                ], expand_x=True, expand_y=True),    
            ]
        ]
        
        
        layout = [
            [
                sg.Column(data_files_list_column, expand_x=True, expand_y=True),   
                sg.VSeparator(),             
                sg.Column(results_column, expand_x=True, expand_y=True),
            ],
        ]

        return layout

    def handle_select_folder_event(self, event, values):
        folder = values["-FOLDER-"]
        try:
            # Get list of files in folder
            file_list = os.listdir(folder)
        except:
            file_list = []

        fnames = [ f for f in file_list
                   if os.path.isfile(os.path.join(folder, f)) and (f.lower().endswith((".csv")) or f.lower().endswith((".txt")))
                ]
        self.window["-FILE LIST-"].update(fnames)
        
    def handle_file_list_event(self, event, values):
            try:
                filename = os.path.join(
                    values["-FOLDER-"], values["-FILE LIST-"][0]
                )
                self.window["-TOUT-"].update(filename)
            except Exception as e:
                self.logger.error("Error while loading data file" + str(e))
    
    def handle_projection_technique_event(self, event, values):
        projection_technique = values["-PROJECTION TECHNIQUE-"]
        self.logger.log(f"Projection technique: {projection_technique}")
    
    def handle_dbm_technique_event(self, event, values):
        dbm_technique = values["-DBM TECHNIQUE-"]
        if dbm_technique == "Inverse Projection":
            self.switch_visibility(["-PROJECTION TECHNIQUE TEXT-", "-PROJECTION TECHNIQUE-"], True)
        else:
            self.switch_visibility(["-PROJECTION TECHNIQUE TEXT-", "-PROJECTION TECHNIQUE-"], False)
            
        self.logger.log(f"DBM technique: {dbm_technique}")
    
    def handle_upload_train_data_event(self, event, values):
        try:
            filename = os.path.join(
                values["-FOLDER-"], values["-FILE LIST-"][0]
            )
            self.X_train, self.Y_train = import_csv_dataset(filename, limit=int(0.7*SAMPLES_LIMIT))
            
            self.num_classes = np.unique(self.Y_train).shape[0]
            self.upload_classifier()
        
            self.window["-TRAIN DATA FILE-"].update("Training data file: " + filename)
            self.window["-TRAIN DATA SHAPE-"].update(f"Training data shape: X {self.X_train.shape} Y {self.Y_train.shape}")
        except Exception as e:
            self.logger.error("Error while loading data file" + str(e))
            
    def handle_upload_test_data_event(self, event, values):
        try:
            filename = os.path.join(
                values["-FOLDER-"], values["-FILE LIST-"][0]
            )
            self.X_test, self.Y_test = import_csv_dataset(filename, limit=int(0.3*SAMPLES_LIMIT))
            self.window["-TEST DATA FILE-"].update("Testing data file: " + filename)
            self.window["-TEST DATA SHAPE-"].update(f"Testing data shape: X {self.X_test.shape} Y {self.Y_test.shape}")
        except Exception as e:
            self.logger.error("Error while loading data file" + str(e))
    
    def handle_upload_mnist_data_event(self, event, values):
        (X_train, Y_train), (X_test, Y_test) = import_mnist_dataset()
        
        X_train = X_train.astype('float32')
        X_test = X_test.astype('float32')
        X_train /= 255
        X_test /= 255
        X_train, Y_train = X_train[:int(0.7*SAMPLES_LIMIT)], Y_train[:int(0.7*SAMPLES_LIMIT)]
        X_test, Y_test = X_test[:int(0.3*SAMPLES_LIMIT)], Y_test[:int(0.3*SAMPLES_LIMIT)]
        
        self.X_train, self.Y_train, self.X_test, self.Y_test = X_train, Y_train, X_test, Y_test
        self.num_classes = np.unique(self.Y_train).shape[0]
        
        self.window["-TRAIN DATA FILE-"].update("Training data: MNIST")
        self.window["-TRAIN DATA SHAPE-"].update(f"Training data shape: X {self.X_train.shape} Y {self.Y_train.shape}")
        
        self.window["-TEST DATA FILE-"].update("Testing data: MNIST")
        self.window["-TEST DATA SHAPE-"].update(f"Testing data shape: X {self.X_test.shape} Y {self.Y_test.shape}")
        
        self.upload_classifier()
    
    def switch_visibility(self, elements, visible):
        for x in elements:
            self.window[x].update(visible=visible)
        self.window.refresh()
        
    def handle_dbm_image_event(self, event, values):
        self.logger.log("Clicked on the dbm image")
        if self.dbm_plotter_gui is None:
            self.logger.warn("Nothing to show")
            return
        self.dbm_plotter_gui.start()
        
    def handle_show_dbm_history(self, training_history):
        # this is for plotting the training history
        fig, [ax1, ax2, ax3] = plt.subplots(1, 3, figsize=(20, 5))
        ax1.set_title("Loss")
        ax1.plot(training_history["loss"], label="loss")
        ax1.plot(training_history["val_loss"], label="val_loss")
        ax1.legend()
        
        ax2.set_title("Decoder Accuracy")
        ax2.plot(training_history["decoder_accuracy"], label="decoder_accuracy")
        ax2.plot(training_history["val_decoder_accuracy"], label="val_decoder_accuracy")
        ax2.legend()
        
        ax3.set_title("Classifier Accuracy")
        ax3.plot(training_history["classifier_accuracy"], label="classifier_accuracy")
        ax3.plot(training_history["val_classifier_accuracy"], label="val_classifier_accuracy")
        ax3.legend()
        
        plt.show()
            
    def handle_get_decision_boundary_mapping_event(self, event, values):
        # update loading state
        self.switch_visibility(["-DBM IMAGE-"], False)
        self.switch_visibility(["-DBM TEXT-", "-DBM IMAGE LOADING-"], True)
        
        dbm = DBM_TECHNIQUES[values["-DBM TECHNIQUE-"]](classifier = self.classifier, logger = self.dbm_logger)
        
        projection_technique = values["-PROJECTION TECHNIQUE-"]
        use_decoding_fast = values["-USE FAST DBM CHECKBOX-"]
        show_dbm_history = values["-DBM HISTORY CHECKBOX-"]
        
        RESOLUTION = 256
        
        if values["-DBM TECHNIQUE-"] == "Inverse Projection":
            DEFAULT_MODEL_FOLDER = os.path.join("tmp", "DBM")        
            
            if not os.path.exists(os.path.join(DEFAULT_MODEL_FOLDER, projection_technique, "train_2d.npy")):
                X_train_2d = None
            else:
                with open(os.path.join(DEFAULT_MODEL_FOLDER, projection_technique, "train_2d.npy"), "rb") as f:
                    X_train_2d = np.load(f)
            if not os.path.exists(os.path.join(DEFAULT_MODEL_FOLDER, projection_technique, "test_2d.npy")):
                X_test_2d = None
            else:
                with open(os.path.join(DEFAULT_MODEL_FOLDER, projection_technique, "test_2d.npy"), "rb") as f:
                    X_test_2d = np.load(f)
               
            dbm_info = dbm.generate_boundary_map(
                                        self.X_train, 
                                        self.Y_train, 
                                        self.X_test, 
                                        self.Y_test, 
                                        X2d_train=X_train_2d,
                                        X2d_test=X_test_2d,
                                        resolution=RESOLUTION,
                                        use_fast_decoding=use_decoding_fast,
                                        projection=projection_technique
                                        )
        else:
            dbm_info = dbm.generate_boundary_map(
                                        self.X_train, 
                                        self.Y_train, 
                                        self.X_test, 
                                        self.Y_test, 
                                        resolution=RESOLUTION,
                                        use_fast_decoding=use_decoding_fast,
                                        projection=projection_technique
                                        )

        img, img_confidence, encoded_training_data, encoded_testing_data, spaceNd, training_history = dbm_info
        
        if show_dbm_history:
            self.handle_show_dbm_history(training_history)
        
        
        # ---------------------------------
        # create a GUI window for Decision Boundary Mapping
        self.dbm_plotter_gui = DBMPlotterGUI(
                                            dbm_model = dbm,
                                            img = img,
                                            img_confidence = img_confidence,
                                            encoded_train = encoded_training_data, 
                                            encoded_test = encoded_testing_data,
                                            X_train = self.X_train,
                                            Y_train = self.Y_train,
                                            X_test = self.X_test,
                                            Y_test = self.Y_test,
                                            spaceNd=spaceNd
                                            )
        
        # ---------------------------------
        # update the dbm image
        img = Image.fromarray(np.uint8(self.dbm_plotter_gui.color_img*255))
        img.thumbnail((RESOLUTION, RESOLUTION), Image.ANTIALIAS)
        # Convert im to ImageTk.PhotoImage after window finalized
        image = ImageTk.PhotoImage(image=img)        
        self.window["-DBM IMAGE-"].update(data=image)
                    
        self.switch_visibility(["-DBM IMAGE LOADING-"], False)
        self.switch_visibility(["-DBM IMAGE-"], True)
        