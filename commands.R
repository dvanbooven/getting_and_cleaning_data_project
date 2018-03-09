library(dplyr)

# There are 5 objectives to the code
# 1.  Merges the training and test sets to create one data set.
# 2.  Extracts only the measurements on the mean and standard deviation of each measurement
# 3.  Uses descriptive activity names to name the activites in the data set
# 4.  Appropriately labels the data set with descriptive variable names.
# 5.  From the data in objective 4, create a 2nd independent tidy dataset with the average of each variable for each activity and each subject

# First obtain and unzip the data in the current directory
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zfile <- "UCI HAR Dataset.zip"

if (!file.exists(zfile)) {
  download.file(url, zfile, mode = "wb")
}

# unzip zip file containing data if data directory doesn't already exist
unzip(zfile)
setwd("UCI HAR Dataset")

# Second obtain the features that you want and rename them to human readable (part of objective 2)
features <- read.table("features.txt")
keep_features <- grepl("mean|std", as.character(features[,2]))
keep_feature_names <- features[keep_features,2]
keep_feature_names <- gsub("Acc", "Accelerometer", keep_feature_names)
keep_feature_names <- gsub("Gyro", "Gyroscope", keep_feature_names)
keep_feature_names <- gsub("Freq", "Frequency", keep_feature_names)
keep_feature_names <- gsub("Mag", "Magnitude", keep_feature_names)
keep_feature_names <- gsub("std", "StandardDeviation", keep_feature_names)
keep_feature_names <- gsub("mean", "Mean", keep_feature_names)
keep_feature_names <- gsub("^f", "FrequencyDomain", keep_feature_names)
keep_feature_names <- gsub("^t", "TimeDomain", keep_feature_names)
keep_feature_names <- gsub("[-()]", "", keep_feature_names)

activity_labels <- read.table("activity_labels.txt")


# Third is to read in the data only taking the desired features (objective 2)
trainSub <- read.table("train/subject_train.txt")
trainVal <- read.table("train/X_train.txt")[keep_features]
trainAct <- read.table("train/y_train.txt")

testSub <- read.table("test/subject_test.txt")
testVal <- read.table("test/X_test.txt")[keep_features]
testAct <- read.table("test/y_test.txt")

# Fourth is to merge all of the data together into 1 single table (objective 1)
main_table <- rbind(cbind(trainSub, trainAct, trainVal), cbind(testSub, testAct, testVal))

# Fifth is to change the column names to make it descriptive human readable (objective 4), and change activity column to appropriate human readable data (objective 3)
colnames(main_table) <- c("Subject", "Activity", keep_feature_names)
main_table$Activity <- factor(main_table$Activity, levels = activity_labels[,1], labels = activity_labels[,2])

# Sixth create a second tidy dataset with the means for the data grouped by subject and activity (objective 5)
all_means = main_table %>% group_by(Subject, Activity) %>% summarize_all(funs(mean))
write.table(all_means, "tidy_data.txt", row.names = FALSE, quote = FALSE)
