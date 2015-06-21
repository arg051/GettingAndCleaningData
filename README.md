
### Introduction
This is the course project for the Coursera Getting and Cleaning Data course.
The project contains  four files:
- README.md – this file;
-	CodeBook.md – contains information about original data, the process of creating tidy dataset and description of the tidy dataset;
-	run_analysis.R – script for transforming the original data to the tidy dataset;
-	runAnalysisTidyData.txt – tidy dataset;

### Prerequisites for running the run_analysis.R script
Before you can run the scrip you need to:
- download original data from : 
- exctract the files  - you should end up with folder UCI HAR Dataset that contains files and folders in this structure: 
 - README.txt
 - features_info.txt
 - features.txt
 - activity_labels.txt
 - train/X_train.txt
 - train/y_train.txt
 - train/subject_train.txt
 - train/Inertial Signals/body_acc_x_train.txt
 - train/Inertial Signals/body_acc_y_train.txt
 - train/Inertial Signals/body_acc_z_train.txt
 - train/Inertial Signals/body_gyro_x_train.txt
 - train/Inertial Signals/body_gyro_y_train.txt
 - train/Inertial Signals/body_gyro_z_train.txt
 - train/Inertial Signals/total_acc_x_train.txt
 - train/Inertial Signals/total_acc_y_train.txt
 - train/Inertial Signals/total_acc_z_train.txt
 - test/X_test.txt
 - test/y_test.txt
 - test/subject_test.txt
 - test/Inertial Signals/body_acc_x_test.txt
 - test/Inertial Signals/body_acc_y_test.txt
 - test/Inertial Signals/body_acc_z_test.txt
 - test/Inertial Signals/body_gyro_x_test.txt
 - test/Inertial Signals/body_gyro_y_test.txt
 - test/Inertial Signals/body_gyro_z_test.txt
 - test/Inertial Signals/total_acc_x_test.txt
 - test/Inertial Signals/total_acc_y_test.txt
 - test/Inertial Signals/total_acc_z_test.txt
- Copy the UCI HAR Dataset folder to your working directory;
- The script is using dplyr package so please install the package before runing the script.

You will find the tidy dataset file runAnalysisTidyData.txt in your working directory.











