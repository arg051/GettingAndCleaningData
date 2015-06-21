##Create an R script  called run_analysis.R that does the following:
##1. Merges the training and the test sets to create one data set.
##2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##3. Uses descriptive activity names to name the activities in the data set
##4. Appropriately labels the data set with descriptive variable names. 
##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## functions
fileCheck <- function (file) {
        
        if(!file.exists(file)) {
                stop(paste ("Folder or file not found:", file, sep = " ")) 
        }
}



## check if package is installed and load  it
if (!require("dplyr",character.only = TRUE))
{
        install.packages("dplyr",dep=TRUE)
        if(!require("dplyr",character.only = TRUE)) stop("Package dplyr not found")
}

library(dplyr)



## check if all required files exist in the working directory
fileCheck("UCI HAR Dataset")
fileCheck("UCI HAR Dataset/activity_labels.txt")
fileCheck("UCI HAR Dataset/features.txt")
fileCheck("UCI HAR Dataset/test")
fileCheck("UCI HAR Dataset/test/subject_test.txt")
fileCheck("UCI HAR Dataset/test/y_test.txt")
fileCheck("UCI HAR Dataset/test/X_test.txt")
fileCheck("UCI HAR Dataset/train")
fileCheck("UCI HAR Dataset/train/subject_train.txt")
fileCheck("UCI HAR Dataset/train/y_train.txt")
fileCheck("UCI HAR Dataset/train/X_train.txt")


## read original data from txt files
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")


## set variable names
names(activityLabels)[1:2] <- c("activityId", "activity")
names(yTest)[1] <- "activityId"
names(subjectTest)[1] <- "subjectId"
names(yTrain)[1] <- "activityId"
names(subjectTrain)[1] <- "subjectId"
names(features)[1:2] <- c("featureId", "featureName")


## get only mean() and std() features and create variable names
features <- subset(features, grepl("mean()", features$featureName, fixed = TRUE) |grepl("std()", features$featureName, fixed = TRUE))
features$featureVarName <- gsub("(\\(\\))", "", gsub("-", "_", features$featureName))


##remove unnecessari variables from xTrain and xTest datasets
xTest <- xTest[, features[,1]]
xTrain <- xTrain[, features[,1]]

##add subjectId and activityId data to xTrain and xTest
xTest <- cbind(yTest,subjectTest, xTest)
xTrain <- cbind(yTrain,subjectTrain, xTrain)

##combine test and train data
totalData <- rbind(xTest, xTrain)

## rename fetures variables
names(totalData)[3:68] <- features$featureVarName

##add groups
totalData <- group_by(totalData, activityId, subjectId)

## calculate mean
totalData <- summarise_each(totalData,funs(mean))

## add activity labels
finalData <- merge(activityLabels, totalData, by.x="activityId", by.y = "activityId",   all=TRUE)

##remove activityId variable
finalData$activityId <- NULL

## write to txt file
write.table(finalData, file= "./runAnalysisTidyData.txt", row.name=FALSE) 