#Getting and Cleaning Data - Course Project - Data Science Specialization Coursera

This is a repository for the R code written for the Getting and Cleaning Data Coursera course project.

Steps to source data, execute R code and view end result are as follows:

1. Unzip the source data from here > https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip into a folder on your local computer for example C:\Users\yourname\Documents\Coursera\

2. Copy run_analysis.R into C:\Users\yourname\Documents\Coursera\UCI HAR Dataset\

3. In RStudio firstly, set the working directory setwd("C:\\Users\\yourname\\Documents\\Coursera\\UCI HAR Dataset\\") then the R code can be run using the following code source("run_analysis.R")

4. Use data <- read.table("data_set_with_the_averages.txt") to view final tidy data set. 