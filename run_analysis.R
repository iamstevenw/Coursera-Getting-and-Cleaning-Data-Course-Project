# Source data is located here > https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# This R script does the following:
# 1. Merge the training and the test sets to create one data set.
x_train <- read.table("train/X_train.txt")
x_test <- read.table("test/X_test.txt")
x <- rbind(x_train, x_test)
subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")
s <- rbind(subject_train, subject_test)
y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")
y <- rbind(y_train, y_test)
# 2. Extract only the measurements on the mean and standard deviation for each measurement.
features <- read.table("features.txt")
mean_sd_features <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
x <- x[, mean_sd_features]
names(x) <- features[mean_sd_features, 2]
names(x) <- gsub("\\(|\\)", "", names(x))
names(x) <- tolower(names(x))
# 3. Use descriptive activity names to name the activities in the data set.
activities <- read.table("activity_labels.txt")
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2])))
y[,1] = activities[y[,1], 2]
names(y) <- "activity"
# 4. Appropriately labels the data set with descriptive activity names.
names(s) <- "subject"
tidy <- cbind(s, y, x)
write.table(tidy, "tidy_data.txt")
# 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject.
uniqueSubjects = unique(s)[,1]
numSubjects = length(unique(s)[,1])
numActivities = length(activities[,1])
numCols = dim(tidy)[2]
output = tidy[1:(numSubjects*numActivities), ]
row = 1
for (ns in 1:numSubjects) {
  for (na in 1:numActivities) {
    result[row, 1] = uniqueSubjects[ns]
    result[row, 2] = activities[na, 2]
    tmp <- tidy[tidy$subject==ns & tidy$activity==activities[na, 2], ]
    result[row, 3:numCols] <- colMeans(tmp[, 3:numCols])
    row = row+1
  }
}
write.table(output, "tidy_data_set_with_the_averages.txt", row.name=FALSE)