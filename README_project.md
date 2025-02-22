# :mag: Decision Boundary Mapper  (MasterThesis2023)

This is the code repository for master thesis of Grosu Cristian for 2023 at Utrecht University

## [:books: API Documentation](https://decisionboundarymapper.000webhostapp.com/)

## :scroll: Usage guide

If you are planning to use this repo in your project then simply install the package in your repository by running `pip install decision-boundary-mapper`

If you want to use the functionalities directly from this repo the follow the next flow:

1. Run the following command to install the needed dependencies: `pip install -r requirements.txt`
2. Run the following command to start the application `python3 mainGUI.py`
3. Run the following script to get an example of how the Decision Boundary Mapper works `python3 main.py`

## For deveolpers

1. each time doing a push to the repository run `autopep8 . --recursive --in-place` to automatically format the code

## Notes

1. In order to have reproducible results on each iteration please indicate kernel_initializer in your classifier layers
   This is necessary because refitting classifier is fitting the classifier from scratch, it is creating a new classifier with the exact same architecture.
