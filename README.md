GettingAndCleaningData
======================

Coursera Getting and Cleaning Data from Data Science Specialization course

## 1. Instructions from Coursera Getting and Cleaning data project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Good luck!

## 2. How to excecute the program

### Introduction : 

You have to download the "run_analyis.R" file in your working directory, where your "UCI HAR Dataset" directory have been downloaded and unzipped previously. Make sure that your R working directory is set to the folder that you placed & unziped the UCI HAR Dataset file & placed the run_analysis.R file. This can be done with the R command, setwd(). Do not change the location and name of the files ("UCI HAR Dataset" and "run_analysis.R"). You should have install and load a specific package called "stats".

### Phase 1: 

You should have downloaded the UCI HAR Dataset at this Web link : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Phase 2: 

You should have downloaded and placed the run_analysis.R file on from my github account to your working directory.

### Phase 3: 

You have to execute the run_analysis.R programm. The fatest solution is to open the file, copy the content of the file in your R desktop and press enter. Warning: The program would ask you at step 1 to choose your CRAN mirror to download the stats package. You have to select it and press OK. Be aware that stats package is not available for R version 3.0.2

### Phase 4: 

The programm should produce two files in your working directory, called "merged_tidy_mean_std_data.txt" for the first data frame to produce (with mean and standard deviation) and "subject_activity_feature_mean_data.txt" for the second data frame to produce (with mean of features measurements for each subject and each activity).

### Phase 5: 

Read the instructions in "run_analysis.R" file and have a look to the CodeBook.md file for further instructions.

## 3. Conlusion: 

be advised that this method use in majority R base commands and only stats package. I have tested another method with data.table package which should be faster for higher calculations.

