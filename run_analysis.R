#This script will fulfil the requirements of the Getting and Cleaning Data project 
#assignment

#Read in all the data from test data set and combine into one table and rename
#columns for subject and activity
      subject.test <- read.table("subject_test.txt")
      subject.test <- rename(subject.test, Subject.ID = V1)
      test.set <- read.table("X_test.txt")
      activity.test <- read.table("y_test.txt")
      activity.test <- rename(activity.test, Activity = V1)
      test.combined <- cbind(subject.test, activity.test, test.set)
      
#Read in all the data from training data set and combine into one table and rename
#columns for subject and activity
      subject.train <- read.table("subject_train.txt")
      subject.train <- rename(subject.train, Subject.ID = V1)
      train.set <- read.table("X_train.txt")
      activity.train <- read.table("y_train.txt")
      activity.train <- rename(activity.train, Activity = V1)
      train.combined <- cbind(subject.train, activity.train, train.set)
      
#Combine two datasets
      data.complete <- rbind(train.combined, test.combined)
      
#Creation of subsetted dataframe that contains subject ID, activity and mean and 
#SD of all measurements
      mean.sd <- select(data.complete, c(1:8,43:48,83:88,123:128,163:168,203:204,
      216:217,229:230,242:243,255:256,268:273,347:352, 426:431,505:506,518:519,
      531:532,544:545))
    
#Provides descriptors for all activities. Renames entries in Activites column by 
#substituting a descriptor instead of a number
      mean.sd$Activity <- as.factor(mean.sd$Activity)
      mean.sd <- within(mean.sd,levels(Activity)[levels(Activity) == "1"] <- "WALKING")
      mean.sd <- within(mean.sd,levels(Activity)[levels(Activity) == "2"] <- "WALKING_UPSTAIRS")
      mean.sd <- within(mean.sd,levels(Activity)[levels(Activity) == "3"] <- "WALKING_DOWNSTAIRS")
      mean.sd <- within(mean.sd,levels(Activity)[levels(Activity) == "4"] <- "SITTING")
      mean.sd <- within(mean.sd,levels(Activity)[levels(Activity) == "5"] <- "STANDING")
      mean.sd <- within(mean.sd,levels(Activity)[levels(Activity) == "6"] <- "LAYING")
#Dataset is relabeled with appropriate descriptors of variable names
      mean.sd <- rename(mean.sd, tBodyAcc_X_mean = V1, tBodyAcc_Y_mean = V2, 
      tBodyAcc_Z_mean = V3, tBodyAcc_X_std = V4, tBodyAcc_Y_std = V5, tBodyAcc_Z_std
      = V6, tGravityAcc_X_mean = V41, tGravityAcc_Y_mean = V42, tGravityAcc_Z_mean
      = V43, tGravityAcc_X_std = V44, tGravityAcc_Y_std = V45, tGravityAcc_Z_std = V46,
      tBodyAccJerk_X_mean = V81, tBodyAccJerk_Y_mean = V82, tBodyAccJerk_Z_mean = V83,
      tBodyAccJerk_X_std = V84, tBodyAccJerk_Y_std = V85, tBodyAccJerk_Z_std= V86,
      tBodyGyro_X_mean = V121, tBodyGyro_Y_mean = V122, tBodyGyro_Z_mean = V123, 
      tBodyGyro_X_std = V124, tBodyGyro_Y_std = V125, tBodyGyro_Z_std = V126, 
      tBodyGyroJerk_X_mean = V161, tBodyGyroJerk_Y_mean = V162, tBodyGyroJerk_Z_mean =
      V163, tBodyGyroJerk_X_std = V164, tBodyGyroJerk_Y_std = V165, tBodyGyroJerk_Z_std
      = V166, tBodyAccMag_mean = V201, tBodyAccMag_std = V202, tGravityAccMag_mean = 
      V214, tGravityAccMag_std = V215, tBodyAccJerkMag_mean = V227, tBodyAccJerkMag_std
      = V228, tBodyGyroMag_mean = V240, tBodyGyroMag_std = V241, tBodyGyroJerkMag_mean
      = V253, tBodyGyroJerkMag_std = V254, fBodyAcc_X_mean = V266, fBodyAcc_Y_mean =
      V267, fBodyAcc_Z_mean = V268, fBodyAcc_X_std = V269, fBodyAcc_Y_std = V270,
      fBodyAcc_Z_std = V271, fBodyAccJerk_X_mean = V345, fBodyAccJerk_Y_mean = V346,
      fBodyAccJerk_Z_mean = V347, fBodyAccJerk_X_std = V348, fBodyAccJerk_Y_std = V349,
      fBodyAccJerk_Z_std= V350, fBodyGyro_X_mean = V424, fBodyGyro_Y_mean = V425,
      fBodyGyro_Z_mean = V426, fBodyGyro_X_std = V427, fBodyGyro_Y_std = V428,
      fBodyGyro_Z_std = V429, fBodyAccMag_mean = V503, fBodyAccMag_std = V504,
      fBodyAccJerkMag_mean = V516, fBodyAccJerkMag_std = V517, fBodyGyroMag_mean = V529,
      fBodyGyroMag_std = V530, fBodyGyroJerkMag_mean = V542, fBodyGyroJerkMag_std = 
      V543)
      
#Finally new tidy dataset is output that contains the mean of each variable for 
#for each subject and activity
      tidy.set <- arrange(mean.sd, Subject.ID, Activity) %>%
                  group_by(Subject.ID, Activity) %>%
                  summarise_each(funs(mean))
      write.table(tidy.set,file = "tidy_data.txt", row.names=FALSE)
      
        
      

      

      