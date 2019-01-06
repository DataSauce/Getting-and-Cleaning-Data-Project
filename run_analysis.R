## Getting and Cleaning Data Course Project

## Load packages for functions
library(dplyr)

## Check for and retrieve file if necessary
rawfile <- "getdata_projectfiles_UCI HAR Dataset.zip"
projectdir <- "UCI HAR Dataset"

if (!file.exists(rawfile)) {
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL,rawfile,method="curl")
}

if (!file.exists(projectdir)) {
    unzip(rawfile)
}

## Load all data needed, including train, test, activity labels, and variable labels

features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Manipulate the data for extraction and ultimately combining.
activity_labels[,2] <- as.character(activity_labels[,2])
features[,2] <- as.character(features[,2])

## extract index for desired variables per observation - mean and std
desired_features <- grep(".*mean.*|.*std.*", features[,2])
named_features <- features[desired_features,2]

named_features <- gsub('-mean', 'Mean',named_features)
named_features <- gsub('-std', 'Std',named_features)
named_features <- gsub('[()]', '',named_features)

## extract data based on retrieved indices and merge all with activity labels and subject info
train <- x_train[desired_features]
train <- cbind(subject_train,y_train,train)

test <- x_test[desired_features]
test <- cbind(subject_test,y_test,test)

merged <- rbind(train,test)
colnames(merged) <- c("Subject","Activity",named_features)

## convert activities and subjects to factors
merged$Subject <- as.factor(merged$Subject)
merged$Activity <- factor(merged$Activity,levels = (activity_labels[,1]),labels=as.character(activity_labels[,2]))

## create new text file with summary of variables by subject and activity
summarized <- aggregate(.~Subject+Activity,data=merged,FUN=mean)
write.table(summarized,"summarized.txt",row.names = FALSE)







