# WARNING: You should have download this "run_analyis.R" file in your working directory, 
# where your "UCI HAR Dataset" directory have been downloaded and unzipped previously. 
# Make sure that your R working directory is set to the folder that you placed & unziped the UCI HAR Dataset file
# & placed the run_analysis.R file. This can be done with the R command, setwd(). 
# Do not change the location and name of the files ("UCI HAR Dataset" and "run_analysis.R"). 
# You should have install and load a specific package called "stats".

# Remark 1: You should have downloaded the UCI HAR Dataset at this Web link : 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Remark 2: You should have unziped the UCI HAR Dataset and placed it in your working directory

# Remark 3: You should have downloaded the run_analysis.R file from my github account

# Remark 4: You should have placed the run_analysis.R file in your working directory

# Remark 5: At each step when producing and modifying a data frame, you should investigate 
# the "subject_activity_feature_data" data frame before with head(), tail(), summary() and str() commands. It is particularly useful for the last step 6.

# Remark 6: The program would ask you at step 1 to choose your CRAN mirror to download the stats package. 
# You have to select it and press OK. Be aware that stats package is not available for R version 3.0.2

# Step 1. install and load "stats" library package

install.packages("stats")
library(stats)

# Step 2. Merges the training and the test sets to create one data set.

# Read and merges the "X_train.txt" and "X_test.text" data files
x_train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
x_test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
x_data <- rbind(x_train_data, x_test_data)

# Read and merges the "subject_train.txt" and "subject_test.txt" subjects files
subject_train_data <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test_data <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_data <- rbind(subject_train_data, subject_test_data)

# Read and merges the "y_train.txt" and "y_test.txt" activity files
y_train_data <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test_data <- read.table("UCI HAR Dataset/test/y_test.txt")
y_activity_data <- rbind(y_train_data, y_test_data)

# Step 3. Extracts only the measurements on the mean and standard deviation for each measurement. 

# Read the "features.txt" file
features_data <- read.table("UCI HAR Dataset/features.txt")

# Find the mean and the standard deviation features with a grep command
mean_std_features <- grep("-mean\\(\\)|-std\\(\\)",features_data[,2])

# Strip out mean and standard deviation features
x_data <- x_data[,mean_std_features]

# Make all the names in lower case, from the meand and standard deviation features
names(x_data) <- tolower(features_data[mean_std_features, 2])

# Strip out the features in paranthesis and remove the parenthesis with a gsub command
names(x_data) <- gsub("\\(|\\)","",names(x_data))

# Step 4. Uses descriptive activity names to name the activities in the data set.

# Select the names of the "y_activity_data" file
names(y_activity_data) <- "activity"

# Read the "activity_labels.txt" file
activity <- read.table("UCI HAR Dataset/activity_labels.txt")

# Make the underbars of the features become dashes with a gsub command
activity[, 2] = gsub("_", "-", tolower(as.character(activity[, 2])))

# Replace the numbers with descriptive names
y_activity_data[,1] = activity[y_activity_data[,1],2]

# Step 5. Appropriately labels the data set with descriptive activity names. 

# Select the names of the "subject_data" file
names(subject_data) <- "subject"

# Merges the "subject_data", the "y_activity_data" and the "x_data" files
tidy_data <- cbind(subject_data, y_activity_data, x_data)

# Write the "tidy_data table" data frame in a "merged_tidy_mean_std_data.txt" file in your working directory
write.table(tidy_data, "merged_tidy_mean_std_data_bis.txt", row.names=FALSE)

# Step 6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Create a copy of final "tidy_data" data frame to produce the desired data frame
tidy_data3 <- tidy_data

# Combine the "subject_data" with the activities extract from the "tidy_data3" table to produce 
# a "subject_activity_data" data frame
subject_activity_data <- cbind(subject_data, tidy_data3$activity)

# Name the subjects and activity names in the data frame
colnames(subject_activity_data) <- c("subject.id", "activity")

# Combine with all the features to produce desired data frame
subject_activity_feature_data <- cbind(subject_activity_data, tidy_data3)

# Compute a "tidy_mean_data" data frame from the "subject_activity_feature_data" data frame produced for analysis, 
# compute and report means of all measures, grouped by subject_id and by activity with an aggregate command.
# NOTA : you should investigate the "subject_activity_feature_data" data frame before with head(), tail(), 
# summary() and str() commands
tidy_mean_data <- aggregate(subject_activity_feature_data[,5:70], by = list(subject_activity_feature_data$subject.id, subject_activity_feature_data$activity), FUN = mean)

# Write the appropriate columns names in the "tidy_mean_data" data frame
colnames(tidy_mean_data)[1:2] <- c("subject.id", "activity")

# Write the "tidy_mean_data" data frame in a "subject_activity_feature_mean_data.txt" in your working directory
write.table(tidy_mean_data, file="subject_activity_feature_mean_data_bis.txt", row.names = FALSE)
