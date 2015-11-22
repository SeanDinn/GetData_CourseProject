The run_analysis.R script provided will prepare a tidy dataset from the Human Activity Recognition Using Smartphones Dataset 
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Prerequisites to running this script:
1. The source data files must be in the R working directory. There are two data       sets:training and test and each contain three files
  -subject_test or subject_train that contain the subject ID# (1-30)
  -y_test or y_train that contain the activity ID# (1-6)
  -X_test or X_train that contain a 561 feature vector

2. The dplyr package must be loaded into R

The R script provided performs the following operations:

  1. Reads in the subject_test dataset, which contains the subject ID's.
  2. Renames the subject ID column "Subject.ID""
  3. Reads in the X_test file
  4. Reads in the y_test file, which contains the activity ID's
  5. Renames the activity ID column "Activity""
  6. Combines the test data into one data frame with Subject.ID in first column, 
     Activity in second column and the 561 feature dataframe after. The combined data
     frame has 2947 observations of 563 variables.
  7. This process is repeated on the training dataset. The resulting data frame has
     7352 observations of 563 variables.
     
  8. The two datasets are combined (rbind) to form one complete dataset. This data
    frame has 10299 observations of 563 variables
    
  9. The final data set is then subsetted to contain only the subject ID, activity ID
    and any measurement data that contains the mean and standard deviation of the
    measurements taken. The subsetted dataframe contains 10299 observations of 68
    variables.
    
  10. To provide clarity in the tidy dataset, the activity ID's are replaced with 
      descriptors that indicate the activity. This involves changing the class of the
      activity column to factor and renaming the activity with the descriptors listed 
      in the activity_labels.txt file included in the downloaded files.
      
  11. The columns containing the mean and standard deviation of all measurements
      were renamed with proper descriptors outlined in the features.txt file
      included in the downloaded files.
      
  12. The tidy dataset was completed by ordering the data by Subject ID, then 
      Activity and then grouped by Subject ID and Activity. For each subgroup, the mean
      of the mean and standard deviation of each measurement was calculated creating a       final tidy dataset with 180 observations of 68 variables
      
  13. Finally, the tidy dataset was output to the working directory as 
      tidy_data.txt
      
NOTE: To best view the output file, read back into R using the following script:

      check <- read.table("tidy_data.txt", header = T)
      View(check)
  
