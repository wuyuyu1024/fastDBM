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

import json
import os
import numpy as np
from enum import Enum

from .Autoencoder import Autoencoder
from .SSNP import SSNP
from ..DBMInterface import DBMInterface, DBM_DEFAULT_RESOLUTION, FAST_DBM_STRATEGIES

from ...utils import track_time_wrapper
from ...Logger import LoggerInterface, Logger

time_tracker_console = Logger(
    name="Decision Boundary Mapper - DBM", info_color="cyan", show_init=False)

DEFAULT_MODEL_PATH = os.path.join("tmp", "SDBM")


class NNArchitecture(Enum):
    AUTOENCODER = "autoencoder"
    SSNP = "ssnp"


class SDBM(DBMInterface):
    """
        Self Decision Boundary Mapper (SDBM)
        Uses an auto encoder: 
        1) The encoder part of which is used to reduce the dimensionality of the data (nD -> 2D)
        2) The decoder part of which is used to reconstruct the data (2D -> nD)
        3) The classifier is used to predict the class of the data (nD -> 1D) 

    """

    def __init__(self, classifier, logger: LoggerInterface | None = None):
        """Initialize an Self Decision Boundary Mapper

        Args:
            classifier (tensorflow.keras.Model): The classifier to be used for the autoencoder
            logger (LoggerInterface, optional): The logger class to be used for outputting the info messages. Defaults to None.
        """
        super().__init__(classifier, logger)
        self.neural_network = None  # type: ignore

    @track_time_wrapper(logger=time_tracker_console)
    def fit(self,
            X: np.ndarray, Y: np.ndarray,
            architecture: NNArchitecture = NNArchitecture.AUTOENCODER,
            epochs: int = 300, batch_size: int = 32,
            load_folder: str = DEFAULT_MODEL_PATH):
        """Train an autoencoder on the training data (this will be used to reduce the dimensionality of the data (nD -> 2D) and decode the 2D space to nD)

        Args:
            X_train (np.ndarray): Training data
            Y_train (np.ndarray): Training labels
            X_test (np.ndarray): Testing data
            Y_test (np.ndarray): Testing labels
            epochs (int, optional): The number of epochs to train the autoencoder. Defaults to 300.
            batch_size (int, optional): Defaults to 32.
            load_folder (str, optional): The folder path which contains a pre-trained autoencoder. Defaults to DEFAULT_MODEL_PATH.

        Returns:
            autoencoder (Autoencoder): The trained autoencoder
        """
        match architecture:
            case NNArchitecture.SSNP:
                ssnp = SSNP(folder_path=load_folder)
                ssnp.fit(X, Y, epochs, batch_size)
                return ssnp
            case _:
                autoencoder = Autoencoder(folder_path=load_folder)
                autoencoder.fit(X, epochs, batch_size)
                return autoencoder

    def generate_boundary_map(self,
                              X_train: np.ndarray, Y_train: np.ndarray,
                              X_test: np.ndarray, Y_test: np.ndarray,
                              train_epochs: int = 300, train_batch_size: int = 32,
                              nn_architecture: NNArchitecture = NNArchitecture.AUTOENCODER,
                              resolution: int = DBM_DEFAULT_RESOLUTION,
                              fast_decoding_strategy: FAST_DBM_STRATEGIES = FAST_DBM_STRATEGIES.NONE,
                              load_folder: str = DEFAULT_MODEL_PATH,
                              ):
        """Generate the decision boundary map

            Args:
                X_train (np.ndarray): Training data
                Y_train (np.ndarray): Training labels
                X_test (np.ndarray): Testing data
                Y_test (np.ndarray): Testing labels
                train_epochs (int, optional): The number of epochs to train the autoencoder. Defaults to 300.
                train_batch_size (int, optional): Defaults to 32.
                nn_architecture (NN)
                resolution (int, optional): The resolution of the decision boundary map. Defaults to DBM_DEFAULT_RESOLUTION = 256.
                use_fast_decoding (bool, optional): If True, a fast inference algorithm will be used to decode the 2D space and to generate the decision boundary map. Defaults to False.
                load_folder (str, optional): The folder path which contains a pre-trained autoencoder. Defaults to DEFAULT_MODEL_PATH.
                projection (str, optional): The projection is not used in SDBM, is placed here just to match the DBM signature. Defaults to None.

            Returns:
                img (np.ndarray): The decision boundary map
                img_confidence (np.ndarray): The confidence map
                encoded_training_data (np.ndarray): The 2D coordinates of the training data for each pixel of the decision boundary map
                encdoded_testing_data (np.ndarray): The 2D coordinates of the testing data for each pixel of the decision boundary map
                space_Nd (np.ndarray): The Nd coordinates of the decision boundary map
                history (dict): The history of the training process

            Example:
                >>> import SDBM
                >>> classifier = build_classifier(...)
                >>> sdbm = SDBM.SDBM(classifier)
                >>> img, img_confidence, _, _, history = sdbm.generate_boundary_map(X_train, Y_train, X_test, Y_test)
                >>> plt.imshow(img)
                >>> plt.show()
        """

        # first train the autoencoder if it is not already trained
        if self.neural_network is None:
            X = np.concatenate((X_train, X_test), axis=0)
            Y = np.concatenate((Y_train, Y_test), axis=0)
            self.neural_network = self.fit(X, Y,
                                           architecture=nn_architecture,
                                           load_folder=load_folder,
                                           epochs=train_epochs,
                                           batch_size=train_batch_size)

        # encoder the train and test data and show the encoded data in 2D space
        self.console.log("Encoding the training data to 2D space")
        encoded_training_data = self.neural_network.encode(X_train)
        self.console.log("Encoding the testing data to 2D space")
        encoded_testing_data = self.neural_network.encode(X_test)
        # generate the 2D image in the encoded space
        self.console.log("Decoding the 2D space... 2D -> nD")

        self.resolution = resolution

        img, img_confidence = self.get_dbm(
            fast_decoding_strategy, resolution, load_folder)

        self.X2d = np.concatenate(
            (encoded_training_data, encoded_testing_data), axis=0)
        self.Xnd = np.concatenate((X_train.reshape(
            (X_train.shape[0], -1)), X_test.reshape((X_test.shape[0], -1))), axis=0)

        # transform the encoded data to be in the range [0, resolution)
        encoded_testing_data *= (resolution - 1)
        encoded_training_data *= (resolution - 1)
        encoded_training_data = encoded_training_data.astype(int)
        encoded_testing_data = encoded_testing_data.astype(int)

        encoded_2d_train = np.zeros((len(encoded_training_data), 3))
        encoded_2d_test = np.zeros((len(encoded_training_data), 3))

        for k in range(len(encoded_training_data)):
            [i, j] = encoded_training_data[k]
            encoded_2d_train[k] = [i, j, img[i, j]]
        for k in range(len(encoded_training_data)):
            [i, j] = encoded_training_data[k]
            encoded_2d_test[k] = [i, j, img[i, j]]

        for [i, j] in encoded_testing_data:
            img[i, j] = -2
            img_confidence[i, j] = 1
        for [i, j] in encoded_training_data:
            img[i, j] = -1
            img_confidence[i, j] = 1

        with open(os.path.join(load_folder, "history.json"), 'r') as f:
            history = json.load(f)

        return (img, img_confidence, encoded_2d_train, encoded_2d_test, history)

    def _predict2dspace_(self, X2d: np.ndarray):
        """ Predicts the labels for the given 2D data set.

        Args:
            X2d (np.ndarray): The 2D data set

        Returns:
            predicted_labels (np.array): The predicted labels for the given 2D data set
            predicted_confidence (np.array): The predicted probabilities for the given 2D data set
            spaceNd (np.array): The decoded nD space
        """
        spaceNd = self.neural_network.decode(X2d, verbose=0)
        predictions = self.classifier.predict(  # type: ignore
            spaceNd, verbose=0)                 # type: ignore
        predicted_labels = np.array([np.argmax(p) for p in predictions])
        predicted_confidence = np.array([np.max(p) for p in predictions])
        return predicted_labels, predicted_confidence
