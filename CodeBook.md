# Coursera Project Getting and Cleaning Data - Codebook
## Dataset - 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Variables -
  * Subject  - Test Subject ID
  * Activity - The type of activity perfomred by the individual
Below are the variables for measurement.
  * tBodyAccMeanX
  * tBodyAccMeanY
  * tBodyAccMeanZ
  * tBodyAccStdX
  * tBodyAccStdY
  * tBodyAccStdZ
  * tGravityAccMeanX
  * tGravityAccMeanY
  * tGravityAccMeanZ
  * tGravityAccStdX
  * tGravityAccStdY
  * tGravityAccStdZ
  * tBodyAccJerkMeanX
  * tBodyAccJerkMeanY
  * tBodyAccJerkMeanZ
  * tBodyAccJerkStdX
  * tBodyAccJerkStdY
  * tBodyAccJerkStdZ
  * tBodyGyroMeanX
  * tBodyGyroMeanY
  * tBodyGyroMeanZ
  * tBodyGyroStdX
  * tBodyGyroStdY
  * tBodyGyroStdZ
  * tBodyGyroJerkMeanX
  * tBodyGyroJerkMeanY
  * tBodyGyroJerkMeanZ
  * tBodyGyroJerkStdX
  * tBodyGyroJerkStdY
  * tBodyGyroJerkStdZ
  * tBodyAccMagMean
  * tBodyAccMagStd
  * tGravityAccMagMean
  * tGravityAccMagStd
  * tBodyAccJerkMagMean
  * tBodyAccJerkMagStd
  * tBodyGyroMagMean
  * tBodyGyroMagStd
  * tBodyGyroJerkMagMean
  * tBodyGyroJerkMagStd
  * fBodyAccMeanX
  * fBodyAccMeanY
  * fBodyAccMeanZ
  * fBodyAccStdX
  * fBodyAccStdY
  * fBodyAccStdZ
  * fBodyAccMeanFreqX
  * fBodyAccMeanFreqY
  * fBodyAccMeanFreqZ
  * fBodyAccJerkMeanX
  * fBodyAccJerkMeanY
  * fBodyAccJerkMeanZ
  * fBodyAccJerkStdX
  * fBodyAccJerkStdY
  * fBodyAccJerkStdZ
  * fBodyAccJerkMeanFreqX
  * fBodyAccJerkMeanFreqY
  * fBodyAccJerkMeanFreqZ
  * fBodyGyroMeanX
  * fBodyGyroMeanY
  * fBodyGyroMeanZ
  * fBodyGyroStdX
  * fBodyGyroStdY
  * fBodyGyroStdZ
  * fBodyGyroMeanFreqX
  * fBodyGyroMeanFreqY
  * fBodyGyroMeanFreqZ
  * fBodyAccMagMean
  * fBodyAccMagStd
  * fBodyAccMagMeanFreq
  * fBodyBodyAccJerkMagMean
  * fBodyBodyAccJerkMagStd
  * fBodyBodyAccJerkMagMeanFreq
  * fBodyBodyGyroMagMean
  * fBodyBodyGyroMagStd
  * fBodyBodyGyroMagMeanFreq
  * fBodyBodyGyroJerkMagMean
  * fBodyBodyGyroJerkMagStd
  * fBodyBodyGyroJerkMagMeanFreq
  
## Activities 
 1. Walking
 2. Walking Upstarirs 
 3. Walking Downstairs 
 4. Sitting 
 5. Standing 
 6. Laying
 
## Transformations
 1. Merge Dataset - Merged subject_test,x_test,y_test,subject_train,x_train,y_train datsets to create one single dataset with column
    names taken from feature dataset
 2. Kept subject, activity and columns having mean and standard deviation
 3. Replaced activity levels with descriptive lables
