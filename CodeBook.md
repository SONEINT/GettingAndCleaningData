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

* Step 5 : creation of the "tidy_data" data frame and the "merged_tidy_mean_std_data.txt" file with the mean and standard deviation measurements 

First 2 columns : "subject" and "activity" 

81 columns corresponding to the mean and standard deviation measurements : "tbodyacc-mean-x" "tbodyacc-mean-y" "tbodyacc-mean-z" "tbodyacc-std-x" "tbodyacc-std-y" "tbodyacc-std-z" "tgravityacc-mean-x" "tgravityacc-mean-y" "tgravityacc-mean-z" "tgravityacc-std-x" "tgravityacc-std-y" "tgravityacc-std-z" "tbodyaccjerk-mean-x" "tbodyaccjerk-mean-y" "tbodyaccjerk-mean-z" "tbodyaccjerk-std-x" "tbodyaccjerk-std-y" "tbodyaccjerk-std-z" "tbodygyro-mean-x" "tbodygyro-mean-y" "tbodygyro-mean-z" "tbodygyro-std-x" "tbodygyro-std-y" "tbodygyro-std-z" "tbodygyrojerk-mean-x" "tbodygyrojerk-mean-y" "tbodygyrojerk-mean-z" "tbodygyrojerk-std-x" "tbodygyrojerk-std-y" "tbodygyrojerk-std-z" "tbodyaccmag-mean" "tbodyaccmag-std" "tgravityaccmag-mean" "tgravityaccmag-std" "tbodyaccjerkmag-mean" "tbodyaccjerkmag-std" "tbodygyromag-mean" "tbodygyromag-std" "tbodygyrojerkmag-mean" "tbodygyrojerkmag-std" "fbodyacc-mean-x" "fbodyacc-mean-y" "fbodyacc-mean-z" "fbodyacc-std-x" "fbodyacc-std-y" "fbodyacc-std-z" "fbodyaccjerk-mean-x" "fbodyaccjerk-mean-y" "fbodyaccjerk-mean-z" "fbodyaccjerk-std-x" "fbodyaccjerk-std-y" "fbodyaccjerk-std-z" "fbodygyro-mean-x" "fbodygyro-mean-y" "fbodygyro-mean-z" "fbodygyro-std-x" "fbodygyro-std-y" "fbodygyro-std-z" "fbodyaccmag-mean" "fbodyaccmag-std" "fbodybodyaccjerkmag-mean" "fbodybodyaccjerkmag-std" "fbodybodygyromag-mean" "fbodybodygyromag-std" "fbodybodygyrojerkmag-mean" "fbodybodygyrojerkmag-std"

* Step 6:  creation of the "tidy_mean_data" data frame and file named "subject_activity_feature_mean_data.txt" with mean of all measurements for each subject and each activity

First 2 columns :"subject.id" "activity" 

561 columns corresponding to mean of the 561 features for each subject and each activity : "tbodyacc-mean-x" "tbodyacc-mean-y" "tbodyacc-mean-z" "tbodyacc-std-x" "tbodyacc-std-y" "tbodyacc-std-z" "tbodyacc-mad-x" "tbodyacc-mad-y" "tbodyacc-mad-z" "tbodyacc-max-x" "tbodyacc-max-y" "tbodyacc-max-z" "tbodyacc-min-x" "tbodyacc-min-y" "tbodyacc-min-z" "tbodyacc-sma" "tbodyacc-energy-x" "tbodyacc-energy-y" "tbodyacc-energy-z" "tbodyacc-iqr-x" "tbodyacc-iqr-y" "tbodyacc-iqr-z" "tbodyacc-entropy-x" "tbodyacc-entropy-y" "tbodyacc-entropy-z" "tbodyacc-arcoeff-x,1" "tbodyacc-arcoeff-x,2" "tbodyacc-arcoeff-x,3" "tbodyacc-arcoeff-x,4" "tbodyacc-arcoeff-y,1" "tbodyacc-arcoeff-y,2" "tbodyacc-arcoeff-y,3" "tbodyacc-arcoeff-y,4" "tbodyacc-arcoeff-z,1" "tbodyacc-arcoeff-z,2" "tbodyacc-arcoeff-z,3" "tbodyacc-arcoeff-z,4" "tbodyacc-correlation-x,y" "tbodyacc-correlation-x,z" "tbodyacc-correlation-y,z" "tgravityacc-mean-x" "tgravityacc-mean-y" "tgravityacc-mean-z" "tgravityacc-std-x" "tgravityacc-std-y" "tgravityacc-std-z" "tgravityacc-mad-x" "tgravityacc-mad-y" "tgravityacc-mad-z" "tgravityacc-max-x" "tgravityacc-max-y" "tgravityacc-max-z" "tgravityacc-min-x" "tgravityacc-min-y" "tgravityacc-min-z" "tgravityacc-sma" "tgravityacc-energy-x" "tgravityacc-energy-y" "tgravityacc-energy-z" "tgravityacc-iqr-x" "tgravityacc-iqr-y" "tgravityacc-iqr-z" "tgravityacc-entropy-x" "tgravityacc-entropy-y" "tgravityacc-entropy-z" "tgravityacc-arcoeff-x,1" "tgravityacc-arcoeff-x,2" "tgravityacc-arcoeff-x,3" "tgravityacc-arcoeff-x,4" "tgravityacc-arcoeff-y,1" "tgravityacc-arcoeff-y,2" "tgravityacc-arcoeff-y,3" "tgravityacc-arcoeff-y,4" "tgravityacc-arcoeff-z,1" "tgravityacc-arcoeff-z,2" "tgravityacc-arcoeff-z,3" "tgravityacc-arcoeff-z,4" "tgravityacc-correlation-x,y" "tgravityacc-correlation-x,z" "tgravityacc-correlation-y,z" "tbodyaccjerk-mean-x" "tbodyaccjerk-mean-y" "tbodyaccjerk-mean-z" "tbodyaccjerk-std-x" "tbodyaccjerk-std-y" "tbodyaccjerk-std-z" "tbodyaccjerk-mad-x" "tbodyaccjerk-mad-y" "tbodyaccjerk-mad-z" "tbodyaccjerk-max-x" "tbodyaccjerk-max-y" "tbodyaccjerk-max-z" "tbodyaccjerk-min-x" "tbodyaccjerk-min-y" "tbodyaccjerk-min-z" "tbodyaccjerk-sma" "tbodyaccjerk-energy-x" "tbodyaccjerk-energy-y" "tbodyaccjerk-energy-z" "tbodyaccjerk-iqr-x" "tbodyaccjerk-iqr-y" "tbodyaccjerk-iqr-z" "tbodyaccjerk-entropy-x" "tbodyaccjerk-entropy-y" "tbodyaccjerk-entropy-z" "tbodyaccjerk-arcoeff-x,1" "tbodyaccjerk-arcoeff-x,2" "tbodyaccjerk-arcoeff-x,3" "tbodyaccjerk-arcoeff-x,4" "tbodyaccjerk-arcoeff-y,1" "tbodyaccjerk-arcoeff-y,2" "tbodyaccjerk-arcoeff-y,3" "tbodyaccjerk-arcoeff-y,4" "tbodyaccjerk-arcoeff-z,1" "tbodyaccjerk-arcoeff-z,2" "tbodyaccjerk-arcoeff-z,3" "tbodyaccjerk-arcoeff-z,4" "tbodyaccjerk-correlation-x,y" "tbodyaccjerk-correlation-x,z" "tbodyaccjerk-correlation-y,z" "tbodygyro-mean-x" "tbodygyro-mean-y" "tbodygyro-mean-z" "tbodygyro-std-x" "tbodygyro-std-y" "tbodygyro-std-z" "tbodygyro-mad-x" "tbodygyro-mad-y" "tbodygyro-mad-z" "tbodygyro-max-x" "tbodygyro-max-y" "tbodygyro-max-z" "tbodygyro-min-x" "tbodygyro-min-y" "tbodygyro-min-z" "tbodygyro-sma" "tbodygyro-energy-x" "tbodygyro-energy-y" "tbodygyro-energy-z" "tbodygyro-iqr-x" "tbodygyro-iqr-y" "tbodygyro-iqr-z" "tbodygyro-entropy-x" "tbodygyro-entropy-y" "tbodygyro-entropy-z" "tbodygyro-arcoeff-x,1" "tbodygyro-arcoeff-x,2" "tbodygyro-arcoeff-x,3" "tbodygyro-arcoeff-x,4" "tbodygyro-arcoeff-y,1" "tbodygyro-arcoeff-y,2" "tbodygyro-arcoeff-y,3" "tbodygyro-arcoeff-y,4" "tbodygyro-arcoeff-z,1" "tbodygyro-arcoeff-z,2" "tbodygyro-arcoeff-z,3" "tbodygyro-arcoeff-z,4" "tbodygyro-correlation-x,y" "tbodygyro-correlation-x,z" "tbodygyro-correlation-y,z" "tbodygyrojerk-mean-x" "tbodygyrojerk-mean-y" "tbodygyrojerk-mean-z" "tbodygyrojerk-std-x" "tbodygyrojerk-std-y" "tbodygyrojerk-std-z" "tbodygyrojerk-mad-x" "tbodygyrojerk-mad-y" "tbodygyrojerk-mad-z" "tbodygyrojerk-max-x" "tbodygyrojerk-max-y" "tbodygyrojerk-max-z" "tbodygyrojerk-min-x" "tbodygyrojerk-min-y" "tbodygyrojerk-min-z" "tbodygyrojerk-sma" "tbodygyrojerk-energy-x" "tbodygyrojerk-energy-y" "tbodygyrojerk-energy-z" "tbodygyrojerk-iqr-x" "tbodygyrojerk-iqr-y" "tbodygyrojerk-iqr-z" "tbodygyrojerk-entropy-x" "tbodygyrojerk-entropy-y" "tbodygyrojerk-entropy-z" "tbodygyrojerk-arcoeff-x,1" "tbodygyrojerk-arcoeff-x,2" "tbodygyrojerk-arcoeff-x,3" "tbodygyrojerk-arcoeff-x,4" "tbodygyrojerk-arcoeff-y,1" "tbodygyrojerk-arcoeff-y,2" "tbodygyrojerk-arcoeff-y,3" "tbodygyrojerk-arcoeff-y,4" "tbodygyrojerk-arcoeff-z,1" "tbodygyrojerk-arcoeff-z,2" "tbodygyrojerk-arcoeff-z,3" "tbodygyrojerk-arcoeff-z,4" "tbodygyrojerk-correlation-x,y" "tbodygyrojerk-correlation-x,z" "tbodygyrojerk-correlation-y,z" "tbodyaccmag-mean" "tbodyaccmag-std" "tbodyaccmag-mad" "tbodyaccmag-max" "tbodyaccmag-min" "tbodyaccmag-sma" "tbodyaccmag-energy" "tbodyaccmag-iqr" "tbodyaccmag-entropy" "tbodyaccmag-arcoeff1" "tbodyaccmag-arcoeff2" "tbodyaccmag-arcoeff3" "tbodyaccmag-arcoeff4" "tgravityaccmag-mean" "tgravityaccmag-std" "tgravityaccmag-mad" "tgravityaccmag-max" "tgravityaccmag-min" "tgravityaccmag-sma" "tgravityaccmag-energy" "tgravityaccmag-iqr" "tgravityaccmag-entropy" "tgravityaccmag-arcoeff1" "tgravityaccmag-arcoeff2" "tgravityaccmag-arcoeff3" "tgravityaccmag-arcoeff4" "tbodyaccjerkmag-mean" "tbodyaccjerkmag-std" "tbodyaccjerkmag-mad" "tbodyaccjerkmag-max" "tbodyaccjerkmag-min" "tbodyaccjerkmag-sma" "tbodyaccjerkmag-energy" "tbodyaccjerkmag-iqr" "tbodyaccjerkmag-entropy" "tbodyaccjerkmag-arcoeff1" "tbodyaccjerkmag-arcoeff2" "tbodyaccjerkmag-arcoeff3" "tbodyaccjerkmag-arcoeff4" "tbodygyromag-mean" "tbodygyromag-std" "tbodygyromag-mad" "tbodygyromag-max" "tbodygyromag-min" "tbodygyromag-sma" "tbodygyromag-energy" "tbodygyromag-iqr" "tbodygyromag-entropy" "tbodygyromag-arcoeff1" "tbodygyromag-arcoeff2" "tbodygyromag-arcoeff3" "tbodygyromag-arcoeff4" "tbodygyrojerkmag-mean" "tbodygyrojerkmag-std" "tbodygyrojerkmag-mad" "tbodygyrojerkmag-max" "tbodygyrojerkmag-min" "tbodygyrojerkmag-sma" "tbodygyrojerkmag-energy" "tbodygyrojerkmag-iqr" "tbodygyrojerkmag-entropy" "tbodygyrojerkmag-arcoeff1" "tbodygyrojerkmag-arcoeff2" "tbodygyrojerkmag-arcoeff3" "tbodygyrojerkmag-arcoeff4" "fbodyacc-mean-x" "fbodyacc-mean-y" "fbodyacc-mean-z" "fbodyacc-std-x" "fbodyacc-std-y" "fbodyacc-std-z" "fbodyacc-mad-x" "fbodyacc-mad-y" "fbodyacc-mad-z" "fbodyacc-max-x" "fbodyacc-max-y" "fbodyacc-max-z" "fbodyacc-min-x" "fbodyacc-min-y" "fbodyacc-min-z" "fbodyacc-sma" "fbodyacc-energy-x" "fbodyacc-energy-y" "fbodyacc-energy-z" "fbodyacc-iqr-x" "fbodyacc-iqr-y" "fbodyacc-iqr-z" "fbodyacc-entropy-x" "fbodyacc-entropy-y" "fbodyacc-entropy-z" "fbodyacc-maxinds-x" "fbodyacc-maxinds-y" "fbodyacc-maxinds-z" "fbodyacc-meanfreq-x" "fbodyacc-meanfreq-y" "fbodyacc-meanfreq-z" "fbodyacc-skewness-x" "fbodyacc-kurtosis-x" "fbodyacc-skewness-y" "fbodyacc-kurtosis-y" "fbodyacc-skewness-z" "fbodyacc-kurtosis-z" "fbodyacc-bandsenergy-1,8" "fbodyacc-bandsenergy-9,16" "fbodyacc-bandsenergy-17,24" "fbodyacc-bandsenergy-25,32" "fbodyacc-bandsenergy-33,40" "fbodyacc-bandsenergy-41,48" "fbodyacc-bandsenergy-49,56" "fbodyacc-bandsenergy-57,64" "fbodyacc-bandsenergy-1,16" "fbodyacc-bandsenergy-17,32" "fbodyacc-bandsenergy-33,48" "fbodyacc-bandsenergy-49,64" "fbodyacc-bandsenergy-1,24" "fbodyacc-bandsenergy-25,48" "fbodyacc-bandsenergy-1,8.1" "fbodyacc-bandsenergy-9,16.1" "fbodyacc-bandsenergy-17,24.1" "fbodyacc-bandsenergy-25,32.1" "fbodyacc-bandsenergy-33,40.1" "fbodyacc-bandsenergy-41,48.1" "fbodyacc-bandsenergy-49,56.1" "fbodyacc-bandsenergy-57,64.1" "fbodyacc-bandsenergy-1,16.1" "fbodyacc-bandsenergy-17,32.1" "fbodyacc-bandsenergy-33,48.1" "fbodyacc-bandsenergy-49,64.1" "fbodyacc-bandsenergy-1,24.1" "fbodyacc-bandsenergy-25,48.1" "fbodyacc-bandsenergy-1,8.2" "fbodyacc-bandsenergy-9,16.2" "fbodyacc-bandsenergy-17,24.2" "fbodyacc-bandsenergy-25,32.2" "fbodyacc-bandsenergy-33,40.2" "fbodyacc-bandsenergy-41,48.2" "fbodyacc-bandsenergy-49,56.2" "fbodyacc-bandsenergy-57,64.2" "fbodyacc-bandsenergy-1,16.2" "fbodyacc-bandsenergy-17,32.2" "fbodyacc-bandsenergy-33,48.2" "fbodyacc-bandsenergy-49,64.2" "fbodyacc-bandsenergy-1,24.2" "fbodyacc-bandsenergy-25,48.2" "fbodyaccjerk-mean-x" "fbodyaccjerk-mean-y" "fbodyaccjerk-mean-z" "fbodyaccjerk-std-x" "fbodyaccjerk-std-y" "fbodyaccjerk-std-z" "fbodyaccjerk-mad-x" "fbodyaccjerk-mad-y" "fbodyaccjerk-mad-z" "fbodyaccjerk-max-x" "fbodyaccjerk-max-y" "fbodyaccjerk-max-z" "fbodyaccjerk-min-x" "fbodyaccjerk-min-y" "fbodyaccjerk-min-z" "fbodyaccjerk-sma" "fbodyaccjerk-energy-x" "fbodyaccjerk-energy-y" "fbodyaccjerk-energy-z" "fbodyaccjerk-iqr-x" "fbodyaccjerk-iqr-y" "fbodyaccjerk-iqr-z" "fbodyaccjerk-entropy-x" "fbodyaccjerk-entropy-y" "fbodyaccjerk-entropy-z" "fbodyaccjerk-maxinds-x" "fbodyaccjerk-maxinds-y" "fbodyaccjerk-maxinds-z" "fbodyaccjerk-meanfreq-x" "fbodyaccjerk-meanfreq-y" "fbodyaccjerk-meanfreq-z" "fbodyaccjerk-skewness-x" "fbodyaccjerk-kurtosis-x" "fbodyaccjerk-skewness-y" "fbodyaccjerk-kurtosis-y" "fbodyaccjerk-skewness-z" "fbodyaccjerk-kurtosis-z" "fbodyaccjerk-bandsenergy-1,8" "fbodyaccjerk-bandsenergy-9,16" "fbodyaccjerk-bandsenergy-17,24" "fbodyaccjerk-bandsenergy-25,32" "fbodyaccjerk-bandsenergy-33,40" "fbodyaccjerk-bandsenergy-41,48" "fbodyaccjerk-bandsenergy-49,56" "fbodyaccjerk-bandsenergy-57,64" "fbodyaccjerk-bandsenergy-1,16" "fbodyaccjerk-bandsenergy-17,32" "fbodyaccjerk-bandsenergy-33,48" "fbodyaccjerk-bandsenergy-49,64" "fbodyaccjerk-bandsenergy-1,24" "fbodyaccjerk-bandsenergy-25,48" "fbodyaccjerk-bandsenergy-1,8.1" "fbodyaccjerk-bandsenergy-9,16.1" "fbodyaccjerk-bandsenergy-17,24.1" "fbodyaccjerk-bandsenergy-25,32.1" "fbodyaccjerk-bandsenergy-33,40.1" "fbodyaccjerk-bandsenergy-41,48.1" "fbodyaccjerk-bandsenergy-49,56.1" "fbodyaccjerk-bandsenergy-57,64.1" "fbodyaccjerk-bandsenergy-1,16.1" "fbodyaccjerk-bandsenergy-17,32.1" "fbodyaccjerk-bandsenergy-33,48.1" "fbodyaccjerk-bandsenergy-49,64.1" "fbodyaccjerk-bandsenergy-1,24.1" "fbodyaccjerk-bandsenergy-25,48.1" "fbodyaccjerk-bandsenergy-1,8.2" "fbodyaccjerk-bandsenergy-9,16.2" "fbodyaccjerk-bandsenergy-17,24.2" "fbodyaccjerk-bandsenergy-25,32.2" "fbodyaccjerk-bandsenergy-33,40.2" "fbodyaccjerk-bandsenergy-41,48.2" "fbodyaccjerk-bandsenergy-49,56.2" "fbodyaccjerk-bandsenergy-57,64.2" "fbodyaccjerk-bandsenergy-1,16.2" "fbodyaccjerk-bandsenergy-17,32.2" "fbodyaccjerk-bandsenergy-33,48.2" "fbodyaccjerk-bandsenergy-49,64.2" "fbodyaccjerk-bandsenergy-1,24.2" "fbodyaccjerk-bandsenergy-25,48.2" "fbodygyro-mean-x" "fbodygyro-mean-y" "fbodygyro-mean-z" "fbodygyro-std-x" "fbodygyro-std-y" "fbodygyro-std-z" "fbodygyro-mad-x" "fbodygyro-mad-y" "fbodygyro-mad-z" "fbodygyro-max-x" "fbodygyro-max-y" "fbodygyro-max-z" "fbodygyro-min-x" "fbodygyro-min-y" "fbodygyro-min-z" "fbodygyro-sma" "fbodygyro-energy-x" "fbodygyro-energy-y" "fbodygyro-energy-z" "fbodygyro-iqr-x" "fbodygyro-iqr-y" "fbodygyro-iqr-z" "fbodygyro-entropy-x" "fbodygyro-entropy-y" "fbodygyro-entropy-z" "fbodygyro-maxinds-x" "fbodygyro-maxinds-y" "fbodygyro-maxinds-z" "fbodygyro-meanfreq-x" "fbodygyro-meanfreq-y" "fbodygyro-meanfreq-z" "fbodygyro-skewness-x" "fbodygyro-kurtosis-x" "fbodygyro-skewness-y" "fbodygyro-kurtosis-y" "fbodygyro-skewness-z" "fbodygyro-kurtosis-z" "fbodygyro-bandsenergy-1,8" "fbodygyro-bandsenergy-9,16" "fbodygyro-bandsenergy-17,24" "fbodygyro-bandsenergy-25,32" "fbodygyro-bandsenergy-33,40" "fbodygyro-bandsenergy-41,48" "fbodygyro-bandsenergy-49,56" "fbodygyro-bandsenergy-57,64" "fbodygyro-bandsenergy-1,16" "fbodygyro-bandsenergy-17,32" "fbodygyro-bandsenergy-33,48" "fbodygyro-bandsenergy-49,64" "fbodygyro-bandsenergy-1,24" "fbodygyro-bandsenergy-25,48" "fbodygyro-bandsenergy-1,8.1" "fbodygyro-bandsenergy-9,16.1" "fbodygyro-bandsenergy-17,24.1" "fbodygyro-bandsenergy-25,32.1" "fbodygyro-bandsenergy-33,40.1" "fbodygyro-bandsenergy-41,48.1" "fbodygyro-bandsenergy-49,56.1" "fbodygyro-bandsenergy-57,64.1" "fbodygyro-bandsenergy-1,16.1" "fbodygyro-bandsenergy-17,32.1" "fbodygyro-bandsenergy-33,48.1" "fbodygyro-bandsenergy-49,64.1" "fbodygyro-bandsenergy-1,24.1" "fbodygyro-bandsenergy-25,48.1" "fbodygyro-bandsenergy-1,8.2" "fbodygyro-bandsenergy-9,16.2" "fbodygyro-bandsenergy-17,24.2" "fbodygyro-bandsenergy-25,32.2" "fbodygyro-bandsenergy-33,40.2" "fbodygyro-bandsenergy-41,48.2" "fbodygyro-bandsenergy-49,56.2" "fbodygyro-bandsenergy-57,64.2" "fbodygyro-bandsenergy-1,16.2" "fbodygyro-bandsenergy-17,32.2" "fbodygyro-bandsenergy-33,48.2" "fbodygyro-bandsenergy-49,64.2" "fbodygyro-bandsenergy-1,24.2" "fbodygyro-bandsenergy-25,48.2" "fbodyaccmag-mean" "fbodyaccmag-std" "fbodyaccmag-mad" "fbodyaccmag-max" "fbodyaccmag-min" "fbodyaccmag-sma" "fbodyaccmag-energy" "fbodyaccmag-iqr" "fbodyaccmag-entropy" "fbodyaccmag-maxinds" "fbodyaccmag-meanfreq" "fbodyaccmag-skewness" "fbodyaccmag-kurtosis" "fbodybodyaccjerkmag-mean" "fbodybodyaccjerkmag-std" "fbodybodyaccjerkmag-mad" "fbodybodyaccjerkmag-max" "fbodybodyaccjerkmag-min" "fbodybodyaccjerkmag-sma" "fbodybodyaccjerkmag-energy" "fbodybodyaccjerkmag-iqr" "fbodybodyaccjerkmag-entropy" "fbodybodyaccjerkmag-maxinds" "fbodybodyaccjerkmag-meanfreq" "fbodybodyaccjerkmag-skewness" "fbodybodyaccjerkmag-kurtosis" "fbodybodygyromag-mean" "fbodybodygyromag-std" "fbodybodygyromag-mad" "fbodybodygyromag-max" "fbodybodygyromag-min" "fbodybodygyromag-sma" "fbodybodygyromag-energy" "fbodybodygyromag-iqr" "fbodybodygyromag-entropy" "fbodybodygyromag-maxinds" "fbodybodygyromag-meanfreq" "fbodybodygyromag-skewness" "fbodybodygyromag-kurtosis" "fbodybodygyrojerkmag-mean" "fbodybodygyrojerkmag-std" "fbodybodygyrojerkmag-mad" "fbodybodygyrojerkmag-max" "fbodybodygyrojerkmag-min" "fbodybodygyrojerkmag-sma" "fbodybodygyrojerkmag-energy" "fbodybodygyrojerkmag-iqr" "fbodybodygyrojerkmag-entropy" "fbodybodygyrojerkmag-maxinds" "fbodybodygyrojerkmag-meanfreq" "fbodybodygyrojerkmag-skewness" "fbodybodygyrojerkmag-kurtosis" "angletbodyaccmean,gravity" "angletbodyaccjerkmean,gravitymean" "angletbodygyromean,gravitymean" "angletbodygyrojerkmean,gravitymean" "anglex,gravitymean" "angley,gravitymean" "anglez,gravitymean"


### 5. Instructions on variables and measurements

* Activity labels:

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

* features :

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

* list of the features:

1 tBodyAcc-mean()-X
2 tBodyAcc-mean()-Y
3 tBodyAcc-mean()-Z
4 tBodyAcc-std()-X
5 tBodyAcc-std()-Y
6 tBodyAcc-std()-Z
7 tBodyAcc-mad()-X
8 tBodyAcc-mad()-Y
9 tBodyAcc-mad()-Z
10 tBodyAcc-max()-X
11 tBodyAcc-max()-Y
12 tBodyAcc-max()-Z
13 tBodyAcc-min()-X
14 tBodyAcc-min()-Y
15 tBodyAcc-min()-Z
16 tBodyAcc-sma()
17 tBodyAcc-energy()-X
18 tBodyAcc-energy()-Y
19 tBodyAcc-energy()-Z
20 tBodyAcc-iqr()-X
21 tBodyAcc-iqr()-Y
22 tBodyAcc-iqr()-Z
23 tBodyAcc-entropy()-X
24 tBodyAcc-entropy()-Y
25 tBodyAcc-entropy()-Z
26 tBodyAcc-arCoeff()-X,1
27 tBodyAcc-arCoeff()-X,2
28 tBodyAcc-arCoeff()-X,3
29 tBodyAcc-arCoeff()-X,4
30 tBodyAcc-arCoeff()-Y,1
31 tBodyAcc-arCoeff()-Y,2
32 tBodyAcc-arCoeff()-Y,3
33 tBodyAcc-arCoeff()-Y,4
34 tBodyAcc-arCoeff()-Z,1
35 tBodyAcc-arCoeff()-Z,2
36 tBodyAcc-arCoeff()-Z,3
37 tBodyAcc-arCoeff()-Z,4
38 tBodyAcc-correlation()-X,Y
39 tBodyAcc-correlation()-X,Z
40 tBodyAcc-correlation()-Y,Z
41 tGravityAcc-mean()-X
42 tGravityAcc-mean()-Y
43 tGravityAcc-mean()-Z
44 tGravityAcc-std()-X
45 tGravityAcc-std()-Y
46 tGravityAcc-std()-Z
47 tGravityAcc-mad()-X
48 tGravityAcc-mad()-Y
49 tGravityAcc-mad()-Z
50 tGravityAcc-max()-X
51 tGravityAcc-max()-Y
52 tGravityAcc-max()-Z
53 tGravityAcc-min()-X
54 tGravityAcc-min()-Y
55 tGravityAcc-min()-Z
56 tGravityAcc-sma()
57 tGravityAcc-energy()-X
58 tGravityAcc-energy()-Y
59 tGravityAcc-energy()-Z
60 tGravityAcc-iqr()-X
61 tGravityAcc-iqr()-Y
62 tGravityAcc-iqr()-Z
63 tGravityAcc-entropy()-X
64 tGravityAcc-entropy()-Y
65 tGravityAcc-entropy()-Z
66 tGravityAcc-arCoeff()-X,1
67 tGravityAcc-arCoeff()-X,2
68 tGravityAcc-arCoeff()-X,3
69 tGravityAcc-arCoeff()-X,4
70 tGravityAcc-arCoeff()-Y,1
71 tGravityAcc-arCoeff()-Y,2
72 tGravityAcc-arCoeff()-Y,3
73 tGravityAcc-arCoeff()-Y,4
74 tGravityAcc-arCoeff()-Z,1
75 tGravityAcc-arCoeff()-Z,2
76 tGravityAcc-arCoeff()-Z,3
77 tGravityAcc-arCoeff()-Z,4
78 tGravityAcc-correlation()-X,Y
79 tGravityAcc-correlation()-X,Z
80 tGravityAcc-correlation()-Y,Z
81 tBodyAccJerk-mean()-X
82 tBodyAccJerk-mean()-Y
83 tBodyAccJerk-mean()-Z
84 tBodyAccJerk-std()-X
85 tBodyAccJerk-std()-Y
86 tBodyAccJerk-std()-Z
87 tBodyAccJerk-mad()-X
88 tBodyAccJerk-mad()-Y
89 tBodyAccJerk-mad()-Z
90 tBodyAccJerk-max()-X
91 tBodyAccJerk-max()-Y
92 tBodyAccJerk-max()-Z
93 tBodyAccJerk-min()-X
94 tBodyAccJerk-min()-Y
95 tBodyAccJerk-min()-Z
96 tBodyAccJerk-sma()
97 tBodyAccJerk-energy()-X
98 tBodyAccJerk-energy()-Y
99 tBodyAccJerk-energy()-Z
100 tBodyAccJerk-iqr()-X
101 tBodyAccJerk-iqr()-Y
102 tBodyAccJerk-iqr()-Z
103 tBodyAccJerk-entropy()-X
104 tBodyAccJerk-entropy()-Y
105 tBodyAccJerk-entropy()-Z
106 tBodyAccJerk-arCoeff()-X,1
107 tBodyAccJerk-arCoeff()-X,2
108 tBodyAccJerk-arCoeff()-X,3
109 tBodyAccJerk-arCoeff()-X,4
110 tBodyAccJerk-arCoeff()-Y,1
111 tBodyAccJerk-arCoeff()-Y,2
112 tBodyAccJerk-arCoeff()-Y,3
113 tBodyAccJerk-arCoeff()-Y,4
114 tBodyAccJerk-arCoeff()-Z,1
115 tBodyAccJerk-arCoeff()-Z,2
116 tBodyAccJerk-arCoeff()-Z,3
117 tBodyAccJerk-arCoeff()-Z,4
118 tBodyAccJerk-correlation()-X,Y
119 tBodyAccJerk-correlation()-X,Z
120 tBodyAccJerk-correlation()-Y,Z
121 tBodyGyro-mean()-X
122 tBodyGyro-mean()-Y
123 tBodyGyro-mean()-Z
124 tBodyGyro-std()-X
125 tBodyGyro-std()-Y
126 tBodyGyro-std()-Z
127 tBodyGyro-mad()-X
128 tBodyGyro-mad()-Y
129 tBodyGyro-mad()-Z
130 tBodyGyro-max()-X
131 tBodyGyro-max()-Y
132 tBodyGyro-max()-Z
133 tBodyGyro-min()-X
134 tBodyGyro-min()-Y
135 tBodyGyro-min()-Z
136 tBodyGyro-sma()
137 tBodyGyro-energy()-X
138 tBodyGyro-energy()-Y
139 tBodyGyro-energy()-Z
140 tBodyGyro-iqr()-X
141 tBodyGyro-iqr()-Y
142 tBodyGyro-iqr()-Z
143 tBodyGyro-entropy()-X
144 tBodyGyro-entropy()-Y
145 tBodyGyro-entropy()-Z
146 tBodyGyro-arCoeff()-X,1
147 tBodyGyro-arCoeff()-X,2
148 tBodyGyro-arCoeff()-X,3
149 tBodyGyro-arCoeff()-X,4
150 tBodyGyro-arCoeff()-Y,1
151 tBodyGyro-arCoeff()-Y,2
152 tBodyGyro-arCoeff()-Y,3
153 tBodyGyro-arCoeff()-Y,4
154 tBodyGyro-arCoeff()-Z,1
155 tBodyGyro-arCoeff()-Z,2
156 tBodyGyro-arCoeff()-Z,3
157 tBodyGyro-arCoeff()-Z,4
158 tBodyGyro-correlation()-X,Y
159 tBodyGyro-correlation()-X,Z
160 tBodyGyro-correlation()-Y,Z
161 tBodyGyroJerk-mean()-X
162 tBodyGyroJerk-mean()-Y
163 tBodyGyroJerk-mean()-Z
164 tBodyGyroJerk-std()-X
165 tBodyGyroJerk-std()-Y
166 tBodyGyroJerk-std()-Z
167 tBodyGyroJerk-mad()-X
168 tBodyGyroJerk-mad()-Y
169 tBodyGyroJerk-mad()-Z
170 tBodyGyroJerk-max()-X
171 tBodyGyroJerk-max()-Y
172 tBodyGyroJerk-max()-Z
173 tBodyGyroJerk-min()-X
174 tBodyGyroJerk-min()-Y
175 tBodyGyroJerk-min()-Z
176 tBodyGyroJerk-sma()
177 tBodyGyroJerk-energy()-X
178 tBodyGyroJerk-energy()-Y
179 tBodyGyroJerk-energy()-Z
180 tBodyGyroJerk-iqr()-X
181 tBodyGyroJerk-iqr()-Y
182 tBodyGyroJerk-iqr()-Z
183 tBodyGyroJerk-entropy()-X
184 tBodyGyroJerk-entropy()-Y
185 tBodyGyroJerk-entropy()-Z
186 tBodyGyroJerk-arCoeff()-X,1
187 tBodyGyroJerk-arCoeff()-X,2
188 tBodyGyroJerk-arCoeff()-X,3
189 tBodyGyroJerk-arCoeff()-X,4
190 tBodyGyroJerk-arCoeff()-Y,1
191 tBodyGyroJerk-arCoeff()-Y,2
192 tBodyGyroJerk-arCoeff()-Y,3
193 tBodyGyroJerk-arCoeff()-Y,4
194 tBodyGyroJerk-arCoeff()-Z,1
195 tBodyGyroJerk-arCoeff()-Z,2
196 tBodyGyroJerk-arCoeff()-Z,3
197 tBodyGyroJerk-arCoeff()-Z,4
198 tBodyGyroJerk-correlation()-X,Y
199 tBodyGyroJerk-correlation()-X,Z
200 tBodyGyroJerk-correlation()-Y,Z
201 tBodyAccMag-mean()
202 tBodyAccMag-std()
203 tBodyAccMag-mad()
204 tBodyAccMag-max()
205 tBodyAccMag-min()
206 tBodyAccMag-sma()
207 tBodyAccMag-energy()
208 tBodyAccMag-iqr()
209 tBodyAccMag-entropy()
210 tBodyAccMag-arCoeff()1
211 tBodyAccMag-arCoeff()2
212 tBodyAccMag-arCoeff()3
213 tBodyAccMag-arCoeff()4
214 tGravityAccMag-mean()
215 tGravityAccMag-std()
216 tGravityAccMag-mad()
217 tGravityAccMag-max()
218 tGravityAccMag-min()
219 tGravityAccMag-sma()
220 tGravityAccMag-energy()
221 tGravityAccMag-iqr()
222 tGravityAccMag-entropy()
223 tGravityAccMag-arCoeff()1
224 tGravityAccMag-arCoeff()2
225 tGravityAccMag-arCoeff()3
226 tGravityAccMag-arCoeff()4
227 tBodyAccJerkMag-mean()
228 tBodyAccJerkMag-std()
229 tBodyAccJerkMag-mad()
230 tBodyAccJerkMag-max()
231 tBodyAccJerkMag-min()
232 tBodyAccJerkMag-sma()
233 tBodyAccJerkMag-energy()
234 tBodyAccJerkMag-iqr()
235 tBodyAccJerkMag-entropy()
236 tBodyAccJerkMag-arCoeff()1
237 tBodyAccJerkMag-arCoeff()2
238 tBodyAccJerkMag-arCoeff()3
239 tBodyAccJerkMag-arCoeff()4
240 tBodyGyroMag-mean()
241 tBodyGyroMag-std()
242 tBodyGyroMag-mad()
243 tBodyGyroMag-max()
244 tBodyGyroMag-min()
245 tBodyGyroMag-sma()
246 tBodyGyroMag-energy()
247 tBodyGyroMag-iqr()
248 tBodyGyroMag-entropy()
249 tBodyGyroMag-arCoeff()1
250 tBodyGyroMag-arCoeff()2
251 tBodyGyroMag-arCoeff()3
252 tBodyGyroMag-arCoeff()4
253 tBodyGyroJerkMag-mean()
254 tBodyGyroJerkMag-std()
255 tBodyGyroJerkMag-mad()
256 tBodyGyroJerkMag-max()
257 tBodyGyroJerkMag-min()
258 tBodyGyroJerkMag-sma()
259 tBodyGyroJerkMag-energy()
260 tBodyGyroJerkMag-iqr()
261 tBodyGyroJerkMag-entropy()
262 tBodyGyroJerkMag-arCoeff()1
263 tBodyGyroJerkMag-arCoeff()2
264 tBodyGyroJerkMag-arCoeff()3
265 tBodyGyroJerkMag-arCoeff()4
266 fBodyAcc-mean()-X
267 fBodyAcc-mean()-Y
268 fBodyAcc-mean()-Z
269 fBodyAcc-std()-X
270 fBodyAcc-std()-Y
271 fBodyAcc-std()-Z
272 fBodyAcc-mad()-X
273 fBodyAcc-mad()-Y
274 fBodyAcc-mad()-Z
275 fBodyAcc-max()-X
276 fBodyAcc-max()-Y
277 fBodyAcc-max()-Z
278 fBodyAcc-min()-X
279 fBodyAcc-min()-Y
280 fBodyAcc-min()-Z
281 fBodyAcc-sma()
282 fBodyAcc-energy()-X
283 fBodyAcc-energy()-Y
284 fBodyAcc-energy()-Z
285 fBodyAcc-iqr()-X
286 fBodyAcc-iqr()-Y
287 fBodyAcc-iqr()-Z
288 fBodyAcc-entropy()-X
289 fBodyAcc-entropy()-Y
290 fBodyAcc-entropy()-Z
291 fBodyAcc-maxInds-X
292 fBodyAcc-maxInds-Y
293 fBodyAcc-maxInds-Z
294 fBodyAcc-meanFreq()-X
295 fBodyAcc-meanFreq()-Y
296 fBodyAcc-meanFreq()-Z
297 fBodyAcc-skewness()-X
298 fBodyAcc-kurtosis()-X
299 fBodyAcc-skewness()-Y
300 fBodyAcc-kurtosis()-Y
301 fBodyAcc-skewness()-Z
302 fBodyAcc-kurtosis()-Z
303 fBodyAcc-bandsEnergy()-1,8
304 fBodyAcc-bandsEnergy()-9,16
305 fBodyAcc-bandsEnergy()-17,24
306 fBodyAcc-bandsEnergy()-25,32
307 fBodyAcc-bandsEnergy()-33,40
308 fBodyAcc-bandsEnergy()-41,48
309 fBodyAcc-bandsEnergy()-49,56
310 fBodyAcc-bandsEnergy()-57,64
311 fBodyAcc-bandsEnergy()-1,16
312 fBodyAcc-bandsEnergy()-17,32
313 fBodyAcc-bandsEnergy()-33,48
314 fBodyAcc-bandsEnergy()-49,64
315 fBodyAcc-bandsEnergy()-1,24
316 fBodyAcc-bandsEnergy()-25,48
317 fBodyAcc-bandsEnergy()-1,8
318 fBodyAcc-bandsEnergy()-9,16
319 fBodyAcc-bandsEnergy()-17,24
320 fBodyAcc-bandsEnergy()-25,32
321 fBodyAcc-bandsEnergy()-33,40
322 fBodyAcc-bandsEnergy()-41,48
323 fBodyAcc-bandsEnergy()-49,56
324 fBodyAcc-bandsEnergy()-57,64
325 fBodyAcc-bandsEnergy()-1,16
326 fBodyAcc-bandsEnergy()-17,32
327 fBodyAcc-bandsEnergy()-33,48
328 fBodyAcc-bandsEnergy()-49,64
329 fBodyAcc-bandsEnergy()-1,24
330 fBodyAcc-bandsEnergy()-25,48
331 fBodyAcc-bandsEnergy()-1,8
332 fBodyAcc-bandsEnergy()-9,16
333 fBodyAcc-bandsEnergy()-17,24
334 fBodyAcc-bandsEnergy()-25,32
335 fBodyAcc-bandsEnergy()-33,40
336 fBodyAcc-bandsEnergy()-41,48
337 fBodyAcc-bandsEnergy()-49,56
338 fBodyAcc-bandsEnergy()-57,64
339 fBodyAcc-bandsEnergy()-1,16
340 fBodyAcc-bandsEnergy()-17,32
341 fBodyAcc-bandsEnergy()-33,48
342 fBodyAcc-bandsEnergy()-49,64
343 fBodyAcc-bandsEnergy()-1,24
344 fBodyAcc-bandsEnergy()-25,48
345 fBodyAccJerk-mean()-X
346 fBodyAccJerk-mean()-Y
347 fBodyAccJerk-mean()-Z
348 fBodyAccJerk-std()-X
349 fBodyAccJerk-std()-Y
350 fBodyAccJerk-std()-Z
351 fBodyAccJerk-mad()-X
352 fBodyAccJerk-mad()-Y
353 fBodyAccJerk-mad()-Z
354 fBodyAccJerk-max()-X
355 fBodyAccJerk-max()-Y
356 fBodyAccJerk-max()-Z
357 fBodyAccJerk-min()-X
358 fBodyAccJerk-min()-Y
359 fBodyAccJerk-min()-Z
360 fBodyAccJerk-sma()
361 fBodyAccJerk-energy()-X
362 fBodyAccJerk-energy()-Y
363 fBodyAccJerk-energy()-Z
364 fBodyAccJerk-iqr()-X
365 fBodyAccJerk-iqr()-Y
366 fBodyAccJerk-iqr()-Z
367 fBodyAccJerk-entropy()-X
368 fBodyAccJerk-entropy()-Y
369 fBodyAccJerk-entropy()-Z
370 fBodyAccJerk-maxInds-X
371 fBodyAccJerk-maxInds-Y
372 fBodyAccJerk-maxInds-Z
373 fBodyAccJerk-meanFreq()-X
374 fBodyAccJerk-meanFreq()-Y
375 fBodyAccJerk-meanFreq()-Z
376 fBodyAccJerk-skewness()-X
377 fBodyAccJerk-kurtosis()-X
378 fBodyAccJerk-skewness()-Y
379 fBodyAccJerk-kurtosis()-Y
380 fBodyAccJerk-skewness()-Z
381 fBodyAccJerk-kurtosis()-Z
382 fBodyAccJerk-bandsEnergy()-1,8
383 fBodyAccJerk-bandsEnergy()-9,16
384 fBodyAccJerk-bandsEnergy()-17,24
385 fBodyAccJerk-bandsEnergy()-25,32
386 fBodyAccJerk-bandsEnergy()-33,40
387 fBodyAccJerk-bandsEnergy()-41,48
388 fBodyAccJerk-bandsEnergy()-49,56
389 fBodyAccJerk-bandsEnergy()-57,64
390 fBodyAccJerk-bandsEnergy()-1,16
391 fBodyAccJerk-bandsEnergy()-17,32
392 fBodyAccJerk-bandsEnergy()-33,48
393 fBodyAccJerk-bandsEnergy()-49,64
394 fBodyAccJerk-bandsEnergy()-1,24
395 fBodyAccJerk-bandsEnergy()-25,48
396 fBodyAccJerk-bandsEnergy()-1,8
397 fBodyAccJerk-bandsEnergy()-9,16
398 fBodyAccJerk-bandsEnergy()-17,24
399 fBodyAccJerk-bandsEnergy()-25,32
400 fBodyAccJerk-bandsEnergy()-33,40
401 fBodyAccJerk-bandsEnergy()-41,48
402 fBodyAccJerk-bandsEnergy()-49,56
403 fBodyAccJerk-bandsEnergy()-57,64
404 fBodyAccJerk-bandsEnergy()-1,16
405 fBodyAccJerk-bandsEnergy()-17,32
406 fBodyAccJerk-bandsEnergy()-33,48
407 fBodyAccJerk-bandsEnergy()-49,64
408 fBodyAccJerk-bandsEnergy()-1,24
409 fBodyAccJerk-bandsEnergy()-25,48
410 fBodyAccJerk-bandsEnergy()-1,8
411 fBodyAccJerk-bandsEnergy()-9,16
412 fBodyAccJerk-bandsEnergy()-17,24
413 fBodyAccJerk-bandsEnergy()-25,32
414 fBodyAccJerk-bandsEnergy()-33,40
415 fBodyAccJerk-bandsEnergy()-41,48
416 fBodyAccJerk-bandsEnergy()-49,56
417 fBodyAccJerk-bandsEnergy()-57,64
418 fBodyAccJerk-bandsEnergy()-1,16
419 fBodyAccJerk-bandsEnergy()-17,32
420 fBodyAccJerk-bandsEnergy()-33,48
421 fBodyAccJerk-bandsEnergy()-49,64
422 fBodyAccJerk-bandsEnergy()-1,24
423 fBodyAccJerk-bandsEnergy()-25,48
424 fBodyGyro-mean()-X
425 fBodyGyro-mean()-Y
426 fBodyGyro-mean()-Z
427 fBodyGyro-std()-X
428 fBodyGyro-std()-Y
429 fBodyGyro-std()-Z
430 fBodyGyro-mad()-X
431 fBodyGyro-mad()-Y
432 fBodyGyro-mad()-Z
433 fBodyGyro-max()-X
434 fBodyGyro-max()-Y
435 fBodyGyro-max()-Z
436 fBodyGyro-min()-X
437 fBodyGyro-min()-Y
438 fBodyGyro-min()-Z
439 fBodyGyro-sma()
440 fBodyGyro-energy()-X
441 fBodyGyro-energy()-Y
442 fBodyGyro-energy()-Z
443 fBodyGyro-iqr()-X
444 fBodyGyro-iqr()-Y
445 fBodyGyro-iqr()-Z
446 fBodyGyro-entropy()-X
447 fBodyGyro-entropy()-Y
448 fBodyGyro-entropy()-Z
449 fBodyGyro-maxInds-X
450 fBodyGyro-maxInds-Y
451 fBodyGyro-maxInds-Z
452 fBodyGyro-meanFreq()-X
453 fBodyGyro-meanFreq()-Y
454 fBodyGyro-meanFreq()-Z
455 fBodyGyro-skewness()-X
456 fBodyGyro-kurtosis()-X
457 fBodyGyro-skewness()-Y
458 fBodyGyro-kurtosis()-Y
459 fBodyGyro-skewness()-Z
460 fBodyGyro-kurtosis()-Z
461 fBodyGyro-bandsEnergy()-1,8
462 fBodyGyro-bandsEnergy()-9,16
463 fBodyGyro-bandsEnergy()-17,24
464 fBodyGyro-bandsEnergy()-25,32
465 fBodyGyro-bandsEnergy()-33,40
466 fBodyGyro-bandsEnergy()-41,48
467 fBodyGyro-bandsEnergy()-49,56
468 fBodyGyro-bandsEnergy()-57,64
469 fBodyGyro-bandsEnergy()-1,16
470 fBodyGyro-bandsEnergy()-17,32
471 fBodyGyro-bandsEnergy()-33,48
472 fBodyGyro-bandsEnergy()-49,64
473 fBodyGyro-bandsEnergy()-1,24
474 fBodyGyro-bandsEnergy()-25,48
475 fBodyGyro-bandsEnergy()-1,8
476 fBodyGyro-bandsEnergy()-9,16
477 fBodyGyro-bandsEnergy()-17,24
478 fBodyGyro-bandsEnergy()-25,32
479 fBodyGyro-bandsEnergy()-33,40
480 fBodyGyro-bandsEnergy()-41,48
481 fBodyGyro-bandsEnergy()-49,56
482 fBodyGyro-bandsEnergy()-57,64
483 fBodyGyro-bandsEnergy()-1,16
484 fBodyGyro-bandsEnergy()-17,32
485 fBodyGyro-bandsEnergy()-33,48
486 fBodyGyro-bandsEnergy()-49,64
487 fBodyGyro-bandsEnergy()-1,24
488 fBodyGyro-bandsEnergy()-25,48
489 fBodyGyro-bandsEnergy()-1,8
490 fBodyGyro-bandsEnergy()-9,16
491 fBodyGyro-bandsEnergy()-17,24
492 fBodyGyro-bandsEnergy()-25,32
493 fBodyGyro-bandsEnergy()-33,40
494 fBodyGyro-bandsEnergy()-41,48
495 fBodyGyro-bandsEnergy()-49,56
496 fBodyGyro-bandsEnergy()-57,64
497 fBodyGyro-bandsEnergy()-1,16
498 fBodyGyro-bandsEnergy()-17,32
499 fBodyGyro-bandsEnergy()-33,48
500 fBodyGyro-bandsEnergy()-49,64
501 fBodyGyro-bandsEnergy()-1,24
502 fBodyGyro-bandsEnergy()-25,48
503 fBodyAccMag-mean()
504 fBodyAccMag-std()
505 fBodyAccMag-mad()
506 fBodyAccMag-max()
507 fBodyAccMag-min()
508 fBodyAccMag-sma()
509 fBodyAccMag-energy()
510 fBodyAccMag-iqr()
511 fBodyAccMag-entropy()
512 fBodyAccMag-maxInds
513 fBodyAccMag-meanFreq()
514 fBodyAccMag-skewness()
515 fBodyAccMag-kurtosis()
516 fBodyBodyAccJerkMag-mean()
517 fBodyBodyAccJerkMag-std()
518 fBodyBodyAccJerkMag-mad()
519 fBodyBodyAccJerkMag-max()
520 fBodyBodyAccJerkMag-min()
521 fBodyBodyAccJerkMag-sma()
522 fBodyBodyAccJerkMag-energy()
523 fBodyBodyAccJerkMag-iqr()
524 fBodyBodyAccJerkMag-entropy()
525 fBodyBodyAccJerkMag-maxInds
526 fBodyBodyAccJerkMag-meanFreq()
527 fBodyBodyAccJerkMag-skewness()
528 fBodyBodyAccJerkMag-kurtosis()
529 fBodyBodyGyroMag-mean()
530 fBodyBodyGyroMag-std()
531 fBodyBodyGyroMag-mad()
532 fBodyBodyGyroMag-max()
533 fBodyBodyGyroMag-min()
534 fBodyBodyGyroMag-sma()
535 fBodyBodyGyroMag-energy()
536 fBodyBodyGyroMag-iqr()
537 fBodyBodyGyroMag-entropy()
538 fBodyBodyGyroMag-maxInds
539 fBodyBodyGyroMag-meanFreq()
540 fBodyBodyGyroMag-skewness()
541 fBodyBodyGyroMag-kurtosis()
542 fBodyBodyGyroJerkMag-mean()
543 fBodyBodyGyroJerkMag-std()
544 fBodyBodyGyroJerkMag-mad()
545 fBodyBodyGyroJerkMag-max()
546 fBodyBodyGyroJerkMag-min()
547 fBodyBodyGyroJerkMag-sma()
548 fBodyBodyGyroJerkMag-energy()
549 fBodyBodyGyroJerkMag-iqr()
550 fBodyBodyGyroJerkMag-entropy()
551 fBodyBodyGyroJerkMag-maxInds
552 fBodyBodyGyroJerkMag-meanFreq()
553 fBodyBodyGyroJerkMag-skewness()
554 fBodyBodyGyroJerkMag-kurtosis()
555 angle(tBodyAccMean,gravity)
556 angle(tBodyAccJerkMean),gravityMean)
557 angle(tBodyGyroMean,gravityMean)
558 angle(tBodyGyroJerkMean,gravityMean)
559 angle(X,gravityMean)
560 angle(Y,gravityMean)
561 angle(Z,gravityMean)


