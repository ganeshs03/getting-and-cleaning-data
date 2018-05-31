###############################
# Run_Analysis.R
###############################

## 1. Get Data
library(dplyr)

### Download File
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(zipUrl,destfile = "FUCIHAR_DATASET.zip",mode = 'wb')

### Unzip File
unzip("FUCIHAR_DATASET.zip")

## 2. Read Data
fucichar_data_path <- "UCI HAR Dataset" 

### Read Test Data
subject_test <- read.table(file.path(fucichar_data_path, "test", "subject_test.txt"))
Values_test <- read.table(file.path(fucichar_data_path, "test", "X_test.txt"))
activity_test <- read.table(file.path(fucichar_data_path, "test", "y_test.txt"))


### Read Training data
subject_train <- read.table(file.path(fucichar_data_path, "train", "subject_train.txt"))
values_train <- read.table(file.path(fucichar_data_path, "train", "X_train.txt"))
activity_train <- read.table(file.path(fucichar_data_path, "train", "y_train.txt"))

### Read Features
features <- read.table(file.path(fucichar_data_path, "features.txt"), as.is = TRUE)

### Read activity labels
activities <- read.table(file.path(fucichar_data_path, "activity_labels.txt"))

## 3. Merge data and filter data
complete_activity_test <- cbind(subject_test,activity_test,Values_test)
complete_activity_train <- cbind(subject_train,activity_train,values_train)
complete_activity <- rbind(complete_activity_train,complete_activity_test)

### give features as column names
colnames(complete_activity) <- c("subject","activity",features[,2])

### Extract only columsn with mean and standard deviation.
keepcolumns <- grep("subject|activity|mean|std",colnames(complete_activity))
complete_activity <- complete_activity[,keepcolumns]

### Replace activity levels with actual activity name
complete_activity$activity <- factor(complete_activity$activity,levels = activities[,1],labels = activities[,2])

## 4. Data with average of each variable and each subject
### Group by subject and activity
complete_activity_group <- group_by(complete_activity,subject,activity)

### Summarise by function mean
complete_activity_mean <- summarise_all(complete_activity_group,funs(mean))

## 5. Write data to independent tidy data set
write.table(complete_activity_mean,"indp_tidy_data.txt",row.names = FALSE,quote = FALSE)
