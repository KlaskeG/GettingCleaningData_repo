# Codebook for the analysis of the UCI HAR Dataset

## Original data set
The original dataset is downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The date and time the data is downloaded is: "Wed Jan 27 13:34:41 2016"

## Analysis
The goal of the analysis was to create a new data file containing the averages of the mean and standard deviations of the measurements per subject and activity. 
The analysis is performed in R.
The details of the performed analysis can be found in the script "run_analysis.R". The analysis follows the following steps:

1 All the original data is unpacked and read into R. The main data sets are the test and train data sets with all the measurements.
This sets are called X_train.txt and X_test.txt. 
The files y_train.txt and y_test.txt contains the coded activity numbers (1-6) from which all the measurements are. 
The activity_labels.txt file contains the labels of the coded activities. 
The file features.txt contains the variable names of the measurements in the data sets.
The subject.txt file contains the subject number (1-30) for all the measurements in the data sets.

2 The variable names of the measurements in the train and test sets are obtained from the features.txt file and added to the data sets.

3 Information about the subject (from subject.txt) and activity (y_train.txt and y_test.txt) is added in an extra colomn of the datasets

4 The test and train sets are merged into one dataset

5 A selection is made to get only the mean and standard deviation measurements

6 The labels of the activities is added by merging with the activity labels file (activity_labels.txt)

7 The data in the dataset is summarized to obtain the average of all the mean and standard deviation measurements per subject and activity

8 In the variable names the string "Average" is added, to prevent confusion with the original measurements.

9 The tidy dataset is saved as a csv file: "assignment week4.csv"

## Description of the dataset "assignment week4.csv"
In this dataset every row contains the averages for the mean and standard deviation measurements per subject and activity
The id-variables: 

 [1] subject: The number of the subject, ranging from 1 to 30
 
 [2] activity: The activity from which the measurements originate. This is a factor with 6 values: "LAYING", "SITTING","STANDING","WALKING","WALKING_DOWNSTAIRS","WALKING_UPSTAIRS"

The measurements variables are the averages of the original measurements on the subject and activity. 
The original names of the measurements are kept, only the name "Average" is put in front. 
The explaination of the measurements is in the next paragraph and can also be found in the original files in the UCI HAR Dataset. The measurements are all averages of standardized measures in the range [-1,1]

 [3] "AveragetBodyAcc-mean()-X"          
 [4] "AveragetBodyAcc-mean()-Y"          
 [5] "AveragetBodyAcc-mean()-Z"          
 [6] "AveragetBodyAcc-std()-X"           
 [7] "AveragetBodyAcc-std()-Y"           
 [8] "AveragetBodyAcc-std()-Z"           
 [9] "AveragetGravityAcc-mean()-X"       
[10] "AveragetGravityAcc-mean()-Y"       
[11] "AveragetGravityAcc-mean()-Z"       
[12] "AveragetGravityAcc-std()-X"        
[13] "AveragetGravityAcc-std()-Y"        
[14] "AveragetGravityAcc-std()-Z"        
[15] "AveragetBodyAccJerk-mean()-X"      
[16] "AveragetBodyAccJerk-mean()-Y"      
[17] "AveragetBodyAccJerk-mean()-Z"      
[18] "AveragetBodyAccJerk-std()-X"       
[19] "AveragetBodyAccJerk-std()-Y"       
[20] "AveragetBodyAccJerk-std()-Z"       
[21] "AveragetBodyGyro-mean()-X"         
[22] "AveragetBodyGyro-mean()-Y"         
[23] "AveragetBodyGyro-mean()-Z"         
[24] "AveragetBodyGyro-std()-X"          
[25] "AveragetBodyGyro-std()-Y"          
[26] "AveragetBodyGyro-std()-Z"          
[27] "AveragetBodyGyroJerk-mean()-X"     
[28] "AveragetBodyGyroJerk-mean()-Y"     
[29] "AveragetBodyGyroJerk-mean()-Z"     
[30] "AveragetBodyGyroJerk-std()-X"      
[31] "AveragetBodyGyroJerk-std()-Y"      
[32] "AveragetBodyGyroJerk-std()-Z"      
[33] "AveragetBodyAccMag-mean()"         
[34] "AveragetBodyAccMag-std()"          
[35] "AveragetGravityAccMag-mean()"      
[36] "AveragetGravityAccMag-std()"       
[37] "AveragetBodyAccJerkMag-mean()"     
[38] "AveragetBodyAccJerkMag-std()"      
[39] "AveragetBodyGyroMag-mean()"        
[40] "AveragetBodyGyroMag-std()"         
[41] "AveragetBodyGyroJerkMag-mean()"    
[42] "AveragetBodyGyroJerkMag-std()"     
[43] "AveragefBodyAcc-mean()-X"          
[44] "AveragefBodyAcc-mean()-Y"          
[45] "AveragefBodyAcc-mean()-Z"          
[46] "AveragefBodyAcc-std()-X"           
[47] "AveragefBodyAcc-std()-Y"           
[48] "AveragefBodyAcc-std()-Z"           
[49] "AveragefBodyAccJerk-mean()-X"      
[50] "AveragefBodyAccJerk-mean()-Y"      
[51] "AveragefBodyAccJerk-mean()-Z"      
[52] "AveragefBodyAccJerk-std()-X"       
[53] "AveragefBodyAccJerk-std()-Y"       
[54] "AveragefBodyAccJerk-std()-Z"       
[55] "AveragefBodyGyro-mean()-X"         
[56] "AveragefBodyGyro-mean()-Y"         
[57] "AveragefBodyGyro-mean()-Z"         
[58] "AveragefBodyGyro-std()-X"          
[59] "AveragefBodyGyro-std()-Y"          
[60] "AveragefBodyGyro-std()-Z"          
[61] "AveragefBodyAccMag-mean()"         
[62] "AveragefBodyAccMag-std()"          
[63] "AveragefBodyBodyAccJerkMag-mean()" 
[64] "AveragefBodyBodyAccJerkMag-std()"  
[65] "AveragefBodyBodyGyroMag-mean()"    
[66] "AveragefBodyBodyGyroMag-std()"     
[67] "AveragefBodyBodyGyroJerkMag-mean()"
[68] "AveragefBodyBodyGyroJerkMag-std()"

## Information about the measurements on the subjects from the original dataset
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
