### Original  dataset description
The source data for this project is derived from  »Human Activity Recognition Using Smartphones Dataset«.
For detailed explanation   of the source data set  please refere to: 
 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Data transformation steps
- Setup:
 -	check if required packages are installed and load packages;
 -	check if required  data folders and files exist in the working directory;
 -	read original data from txt files;

- Creating tidy dataset: 
 - set variable names for all datasets except features;
 - get only mean() and std() features and create variable names;
 - remove unnecessary variables from xTrain and xTest datasets;
 - add subjectId and activityId variables to xTrain and xTest;
 - combine test and train data;
 -  rename fetures variables;
 - add groups to merged dataset and calculate mean;
 - add activity labels to tidy dataset;
 - write tidy dataset to txt file;

### Tidy dataset description
The tidy dataset contains 180 observations of 68 variables:

| Variable name        | Variable description          | Variable class  | 	Variable values |
| ------------- |:-------------:| -----:| -----:|
| activity | activity name | factor | WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING |
| subjectId | subject identifier for 30 different subjects | integer | numbers 1 – 30  |
| tBodyAcc_mean_X | mean of tBodyAcc-mean()-X | numeric |   |
| tBodyAcc_mean_Y | mean of tBodyAcc-mean()-Y | numeric |   |
| tBodyAcc_mean_Z | mean of tBodyAcc-mean()-Z | numeric |   |
| tBodyAcc_std_X | mean of tBodyAcc-std()-X | numeric |   |
| tBodyAcc_std_Y | mean of tBodyAcc-std()-Y | numeric |   |
| tBodyAcc_std_Z | mean of tBodyAcc-std()-Z | numeric |   |
| tGravityAcc_mean_X | mean of tGravityAcc-mean()-X | numeric |   |
| tGravityAcc_mean_Y | mean of tGravityAcc-mean()-Y | numeric |   |
| tGravityAcc_mean_Z | mean of tGravityAcc-mean()-Z | numeric |   |
| tGravityAcc_std_X | mean of tGravityAcc-std()-X | numeric |   |
| tGravityAcc_std_Y | mean of tGravityAcc-std()-Y | numeric |   |
| tGravityAcc_std_Z | mean of tGravityAcc-std()-Z | numeric |   |
| tBodyAccJerk_mean_X | mean of tBodyAccJerk-mean()-X | numeric |   |
| tBodyAccJerk_mean_Y | mean of tBodyAccJerk-mean()-Y | numeric |   |
| tBodyAccJerk_mean_Z | mean of tBodyAccJerk-mean()-Z | numeric |   |
| tBodyAccJerk_std_X | mean of tBodyAccJerk-std()-X | numeric |   |
| tBodyAccJerk_std_Y | mean of tBodyAccJerk-std()-Y | numeric |   |
| tBodyAccJerk_std_Z | mean of tBodyAccJerk-std()-Z | numeric |   |
| tBodyGyro_mean_X | mean of tBodyGyro-mean()-X | numeric |   |
| tBodyGyro_mean_Y | mean of tBodyGyro-mean()-Y | numeric |   |
| tBodyGyro_mean_Z | mean of tBodyGyro-mean()-Z | numeric |   |
| tBodyGyro_std_X | mean of tBodyGyro-std()-X | numeric |   |
| tBodyGyro_std_Y | mean of tBodyGyro-std()-Y | numeric |   |
| tBodyGyro_std_Z | mean of tBodyGyro-std()-Z | numeric |   |
| tBodyGyroJerk_mean_X | mean of tBodyGyroJerk-mean()-X | numeric |   |
| tBodyGyroJerk_mean_Y | mean of tBodyGyroJerk-mean()-Y | numeric |   |
| tBodyGyroJerk_mean_Z | mean of tBodyGyroJerk-mean()-Z | numeric |   |
| tBodyGyroJerk_std_X | mean of tBodyGyroJerk-std()-X | numeric |   |
| tBodyGyroJerk_std_Y | mean of tBodyGyroJerk-std()-Y | numeric |   |
| tBodyGyroJerk_std_Z | mean of tBodyGyroJerk-std()-Z | numeric |   |
| tBodyAccMag_mean | mean of tBodyAccMag-mean() | numeric |   |
| tBodyAccMag_std | mean of tBodyAccMag-std() | numeric |   |
| tGravityAccMag_mean | mean of tGravityAccMag-mean() | numeric |   |
| tGravityAccMag_std | mean of tGravityAccMag-std() | numeric |   |
| tBodyAccJerkMag_mean | mean of tBodyAccJerkMag-mean() | numeric |   |
| tBodyAccJerkMag_std | mean of tBodyAccJerkMag-std() | numeric |   |
| tBodyGyroMag_mean | mean of tBodyGyroMag-mean() | numeric |   |
| tBodyGyroMag_std | mean of tBodyGyroMag-std() | numeric |   |
| tBodyGyroJerkMag_mean | mean of tBodyGyroJerkMag-mean() | numeric |   |
| tBodyGyroJerkMag_std | mean of tBodyGyroJerkMag-std() | numeric |   |
| fBodyAcc_mean_X | mean of fBodyAcc-mean()-X | numeric |   |
| fBodyAcc_mean_Y | mean of fBodyAcc-mean()-Y | numeric |   |
| fBodyAcc_mean_Z | mean of fBodyAcc-mean()-Z | numeric |   |
| fBodyAcc_std_X | mean of fBodyAcc-std()-X | numeric |   |
| fBodyAcc_std_Y | mean of fBodyAcc-std()-Y | numeric |   |
| fBodyAcc_std_Z | mean of fBodyAcc-std()-Z | numeric |   |
| fBodyAccJerk_mean_X | mean of fBodyAccJerk-mean()-X | numeric |   |
| fBodyAccJerk_mean_Y | mean of fBodyAccJerk-mean()-Y | numeric |   |
| fBodyAccJerk_mean_Z | mean of fBodyAccJerk-mean()-Z | numeric |   |
| fBodyAccJerk_std_X | mean of fBodyAccJerk-std()-X | numeric |   |
| fBodyAccJerk_std_Y | mean of fBodyAccJerk-std()-Y | numeric |   |
| fBodyAccJerk_std_Z | mean of fBodyAccJerk-std()-Z | numeric |   |
| fBodyGyro_mean_X | mean of fBodyGyro-mean()-X | numeric |   |
| fBodyGyro_mean_Y | mean of fBodyGyro-mean()-Y | numeric |   |
| fBodyGyro_mean_Z | mean of fBodyGyro-mean()-Z | numeric |   |
| fBodyGyro_std_X | mean of fBodyGyro-std()-X | numeric |   |
| fBodyGyro_std_Y | mean of fBodyGyro-std()-Y | numeric |   |
| fBodyGyro_std_Z | mean of fBodyGyro-std()-Z | numeric |   |
| fBodyAccMag_mean | mean of fBodyAccMag-mean() | numeric |   |
| fBodyAccMag_std | mean of fBodyAccMag-std() | numeric |   |
| fBodyBodyAccJerkMag_mean | mean of fBodyBodyAccJerkMag-mean() | numeric |   |
| fBodyBodyAccJerkMag_std | mean of fBodyBodyAccJerkMag-std() | numeric |   |
| fBodyBodyGyroMag_mean | mean of fBodyBodyGyroMag-mean() | numeric |   |
| fBodyBodyGyroMag_std | mean of fBodyBodyGyroMag-std() | numeric |   |
| fBodyBodyGyroJerkMag_mean | mean of fBodyBodyGyroJerkMag-mean() | numeric |   |
| fBodyBodyGyroJerkMag_std | mean of fBodyBodyGyroJerkMag-std() | numeric |   |



