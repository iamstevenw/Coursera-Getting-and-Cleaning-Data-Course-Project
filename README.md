#Getting and Cleaning Data - Course Project

This is a repository for the R code written for the Getting and Cleaning Data Coursera course project.

Steps to source data, execute R code and view end tidy data set are as follows:

1. Unzip the source data from here > https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip into a folder on your local computer for example C:\Users\iamstevenw\Documents\Coursera\

2. Copy run_analysis.R into C:\Users\iamstevenw\Documents\Coursera\UCI HAR Dataset\

3. In RStudio set the working directory setwd("C:\\Users\\iamstevenw\\Documents\\Coursera\\UCI HAR Dataset\\") then run the R code source("run_analysis.R")

4. Use data <- read.table("data_set_with_the_averages.txt") to view final tidy data set. 