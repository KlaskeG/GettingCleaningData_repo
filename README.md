# Final assignment in Getting and Cleaning Data Course

In this repo all the files for the final assignment in the Getting and Cleaning Data Course can be found.
The this assignment the dataset "Human Activity Recognition Using Smartphones Dataset" Version 1.0 is analysed.

## Description of the original dataset, also found in the folder "UCI HAR dataset" which contains all the original files
The original data from this dataset are collected by:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

## Performed analysis
In this assignment the original test and train data sets are combined in one set. For every subject (total 30 persons) and activity (6 different types) the measurements about the mean and standard deviation for each measurement are summarised in an average.

## The files and folders in the repository
* README.md
* codebook.md: information about the performed analysis and explanation of the contents of the dataset 
* run_analysis.R: the script for the performed analysis
* assignment week4.csv: the dataset containing the average measurements for each subject and activity
* UCI HAR dataset: this folder contains the original downloades files and datasets, including the README.txt file with the explaination of the files in this folder
 
