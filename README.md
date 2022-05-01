# Brain-tumor-segmentation-using-3D-Unet

# Project CAP 5516

To begin, obtain the dataset from kaggle: https://www.kaggle.com/datasets/awsaf49/brats20-dataset-training-validation

Then in preprocessing.py, change the folder location address according to you.

Then in training.py, change the folder location again according to you.

Then the script.slurm has all the necessary libraries to install, uncomment them and run it on the newton server, or if it is on a local machine, pip install all the required libraries.

Finally, execute the preprocessing.py, custom_datagen.py, Unet_3D.py, and training.py scripts.

5 models will be saved as they are performing 5 fold cross validation.

When that is complete, run the met_eval.py script. will show the dice score and save the "test_image.png" for qualitative analysis.
