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

Step 2 :

- Read and merges the "X_train.txt" and "X_test.text" data files

