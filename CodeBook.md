## CodeBook for the Getting and Cleaning Data Project

### 1. Instructions for the "run_analysis.R" file

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following:

* Step 2: Merges the training and the test sets to create one data set.
* Step 3: Extracts only the measurements on the mean and standard deviation for each measurement.
* Step 4: Uses descriptive activity names to name the activities in the data set
* Step 5: Appropriately labels the data set with descriptive activity names.
* Step 6: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

NOTA: Step 1

* Step 1: Install and load necessary R packages : "stats" - documentation here : http://stat.ethz.ch/R-manual/R-patched/library/stats/html/00Index.html

### 2. Instructions to excecute "run_analysis.R" file in your R environment 

This program use the R software, which is a free software environment for statistical computing and graphics. It compiles and runs on a wide variety of UNIX platforms, Windows and MacOS. You could check here: http://www.r-project.org

To download R, please choose your preferred CRAN mirror.

The "run_analysis.R" program, which execute the desired steps asked, have been computed on a x86_64-apple-darwin10.8.0 with R version 3.0.2 (2013-09-25) codename Frisbee Sailing

Remark 1: You should have downloaded the UCI HAR Dataset at this Web link : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Remark 2: You should have unziped the UCI HAR Dataset and placed it in your working directory

Remark 3: You should have downloaded the run_analysis.R file from my github account

Remark 4: You should have placed the run_analysis.R file in your working directory

Remark 5: At each step when producing and modifying a data frame, you should investigate the "subject_activity_feature_data" data frame before with head(), tail(), summary() and str() commands. It is particularly useful for the last step 6.

Remark 6: You should have excecuted the program on your R environnment. The program would ask you at step 1 to choose your CRAN mirror to download the stats package. You have to select it and press OK. Be aware that stats package is not available for R version 3.0.2

### 3. Instructions on the steps excecuted by the program

Step 2:

* Read and merges the "X_train.txt" and create a "x_train_data" data frame
* Read the "X_test.text" data files and create a "x_test_data" data frame
* Merge the "x_train_data" and "x_test_data" data frames to create a "x_data" data frame
* Read the "subject_train.txt" subjects train file and create a "subject_train_data" data frame
* Read the "subject_test.txt" subjects test files and create a "subject_test_data" data frame
* Merge the "subject_train_data" and "subject_test_data" data frames to create a "subject_data" data frame
* Read the "y_train.txt" activity train file and create a "y_train_data" data frame
* Read the "y_test.txt" activity test file and create a "y_test_data" data frame
* Merge the "y_train_data" and "y_test_data" data frames to create a "y_activity_data" data frame

Step 3: 

* Read the "features.txt" file and create a "features_data" data frame
* Find the mean and the standard deviation features with a grep command and create a "mean_std_features" data set
* Strip out mean and standard deviation features and modify the "x_data" data frame
* Make all the names in lower case, from the meand and standard deviation features in the "x_data" data frame
* Strip out the features in paranthesis and remove the parenthesis with a gsub command in the "x_data" data frame

Step 4:

* Select the names of the "y_activity_data" data frame
* Read the "activity_labels.txt" activity labels file and create an "activity" data frame
* Make the underbars of the features become dashes with a gsub command in the "activity" data frame
* Replace the numbers with descriptive names in the "y_activity_data" data frame

Step 5:

* Select the names of the "subject_data" data frame
* Merges the "subject_data", the "y_activity_data" and the "x_data" data frame to create a "tidy_data" data frame
* Write the "tidy_data table" data frame in a "merged_tidy_mean_std_data.txt" file in your working directory

Step 6: 

* Create a copy of originla "x_data" data frame to work on this second data frame called "x_data3" to produce the desired data frame
* Make all the names of all feratures in lower case in "x_data3" data frame
* Strip out the features in paranthesis and remove the parenthesis with a gsub command in the "x_data3" data frame
* Merges the "subject_data", the "y_activity_data" and the "x_data3" files to create a new "tidy_data3" data	frame with all features inside
* Combine the "subject_data" with the activities extract from the "tidy_data3" table to product a "subject_activity_data" data frame
* Name the subjects and activity names in the "subject_activity_data" data frame
* Combine with all the features with combining "subject_activity_data" and "tidy_data3" data frames to produce a "subject_activity_feature_data" data frame
* Compute a "tidy_mean_data" data frame from the "subject_activity_feature_data" data frame produced for analysis, compute and report means of all measures, grouped by subject_id and by activity with an aggregate command
* write the appropriate columns names in the "tidy_mean_data" data frame
* Write the "tidy_mean_data" data frame in a "subject_activity_feature_mean_data.txt" in your working directory

Should be OK. Please check the files produced in the working directory :

* A first file named "merged_tidy_mean_std_data.txt" which should correspond to "tidy_data" data frame in R, which should be the data frame requested in Step 5
* A second file named "subject_activity_feature_mean_data.txt" which should correspond to "tidy_mean_data" data frame in R, which should be the data frame requested in Step 6

### 4. Instructions to read the 2 files produced


