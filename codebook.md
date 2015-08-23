# Getting and Cleaning Data

Steven Wilson

# Course Project - Code Book

# Source Data

Source of the original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Data Set Steps

The R code in this repository "run_analysis" performs the following the clean the data and produce a tidy data set:

## Part 1 - Merges the training and the test sets to create one data set.

After setting working directory read all datasets into tables with the following data merged

- x_train with x_test
- subject_train with subject_test
- y_train with y_test

## Part 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 

Reads features.txt and extracts only the measurements on the mean and standard deviation for each measurement.

## Part 3 - Uses descriptive activity names to name the activities in the data set

Reads activity_labels.txt and applies descriptive activity names to name the activities in the data set.

## Part 4 - Appropriately labels the data set with descriptive variable names. 

Clean up labels and setting appropiate descriptive names, all feture and activity names are coverted to lower case and brackets are removed.

## Part 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Finally, a data set is produced with the average of each variable for both activity and subject.