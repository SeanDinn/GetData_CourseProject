---
title: "CodeBook"
author: "Sean Dinn"
date: "November 17, 2015"
output: html_document
---
Preprocessing/Transformations: According to the documentation that accompanied the downloaded dataset (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), several filters were applied to remove noise and all the data was normalized to between -1 and 1. That is why there are negative standard deviation numbers.

Variables list:These are the variables that are included in the tidy dataset. All values listed in columns 3:68 are mean values of multiple timepoints. Units are in
          parentheses().

SubjectID: ID from 1-30 that identifies the indiviual who recorderd the data

Activity: One of 6 activities that were measured:Walking, Walking_Upsatirs, Walikng_
          Downstairs, Sitting, Standing or Laying.

tBodyAcc_X_mean: Mean of separated accelleration component due to body motion in the x-axis (g)

tBodyAcc_Y_mean: Mean of separated accelleration component due to body motion in the y-axis (g)

tBodyAcc_Z_mean: Mean of separated accelleration component due to body motion in the z-axis (g)

tBodyAcc_X_std: Std dev of separated accelleration component due to body motion in the x-axis (g)

tBodyAcc_Y_std: Std dev of separated accelleration component due to body motion in the y-axis (g)

tBodyAcc_Z_std: Std dev of separated accelleration component due to body motion in the z-axis (g)

tGravityAcc_X_mean: Mean of separated accelleration component due to gravity in the x-axis (g)

tGravityAcc_Y_mean: Mean of separated accelleration component due to gravity in the y-axis (g)

tGravityAcc_Z_mean: Mean of separated accelleration component due to gravity in the z-axis (g)

tGravityAcc_X_std: Std dev of separated accelleration component due to gravity in the x-axis (g)

tGravityAcc_Y_std: Std dev of separated accelleration component due to gravity in the y-axis (g)

tGravityAcc_Z_std: Std dev of separated accelleration component due to gravity in the z-axis (g)

tBodyAccJerk_X_mean: Mean of separated accelleration component due to body motion in the x-axis derived in time (g)

tBodyAccJerk_Y_mean: Mean of separated accelleration component due to body motion in the y-axis derived in time (g)

tBodyAccJerk_Z_mean: Mean of separated accelleration component due to body motion in the z-axis derived in time (g)

tBodyAccJerk_X_std: Std dev of separated accelleration component due to body motion in the x-axis derived in time (g)

tBodyAccJerk_Y_std: Std dev of separated accelleration component due to body motion in the y-axis derived in time (g)

tBodyAccJerk_Z_std: Std dev of separated accelleration component due to body motion in the z-axis derived in time (g)

tBodyGyro_X_mean: Mean of body angular velocity in the x-axis (radians/sec)

tBodyGyro_Y_mean: Mean of body angular velocity in the y-axis (radians/sec)

tBodyGyro_Z_mean: Mean of body angular velocity in the z-axis (radians/sec)

tBodyGyro_X_std: Std dev of body angular velocity in the x-axis (radians/sec)

tBodyGyro_Y_std: Std dev of body angular velocity in the y-axis (radians/sec)

tBodyGyro_Z_std: Std dev of body angular velocity in the z-axis (radians/sec)

tBodyGyroJerk_X_mean: Mean of body angular velocity in the x-axis derived in time (radians/sec)

tBodyGyroJerk_Y_mean: Mean of body angular velocity in the y-axis derived in time(radians/sec)

tBodyGyroJerk_Z_mean: Mean of body angular velocity in the z-axis derived in time(radians/sec)

tBodyGyroJerk_X_std: Std dev of body angular velocity in the x-axis derived in time(radians/sec)

tBodyGyroJerk_Y_std: Std dev of body angular velocity in the y-axis derived in time(radians/sec)

tBodyGyroJerk_Z_std: Std dev of body angular velocity in the z-axis derived in time(radians/sec)

tBodyAccMag_mean: mean of the Euclidean norm of the separated accelleration component due to body motion(g)

tBodyAccMag_std: Std dev of the Euclidean norm of the separated accelleration component due to body motion(g)

tGravityAccMag_mean: mean of the Euclidean norm of the separated accelleration component due to gravity(g)

tGravityAccMag_std: Std dev of the Euclidean norm of the separated accelleration component due to gravity(g)

tBodyAccJerkMag_mean: mean of the Euclidean norm of the separated accelleration component due to body motion derived in time(g)

tBodyAccJerkMag_std: Std dev of the Euclidean norm of the separated accelleration component due to body motion derived in time(g)

tBodyGyroMag_mean: mean of the Euclidean norm of the body angular velocity (radians/sec)

tBodyGyroMag_std: Std dev of the Euclidean norm of the body angular velocity (radians/sec)

tBodyGyroJerkMag_mean: mean of the Euclidean norm of the body angular velocity derived in time(radians/sec)

tBodyGyroJerkMag_std: std dev of the Euclidean norm of the body angular velocity derived in time(radians/sec)

fBodyAcc_X_mean: mean of the Fast Fourier Transform (FFT) of the separated accelleration component due to body motion in the x-axis(g)

fBodyAcc_Y_mean: mean of the Fast Fourier Transform (FFT) of the separated accelleration component due to body motion in the y-axis(g)

fBodyAcc_Z_mean: mean of the Fast Fourier Transform (FFT) of the separated accelleration component due to body motion in the z-axis(g)

fBodyAcc_X_std: std dev of the Fast Fourier Transform (FFT) of the separated accelleration component due to body motion in the x-axis(g)

fBodyAcc_Y_std: std dev of the Fast Fourier Transform (FFT) of the separated accelleration component due to body motion in the y-axis(g)

fBodyAcc_Z_std: std dev of the Fast Fourier Transform (FFT) of the separated accelleration component due to body motion in the z-axis(g)

fBodyAccJerk_X_mean: mean of the Fast Fourier Transform (FFT) of the separated accelleration component due to body motion in the x-axis derived in time(g)

fBodyAccJerk_Y_mean: mean of the Fast Fourier Transform (FFT) of the separated accelleration component due to body motion in the y-axis derived in time(g)

fBodyAccJerk_Z_mean: mean of the Fast Fourier Transform (FFT) of the separated accelleration component due to body motion in the z-axis derived in time(g)

fBodyAccJerk_X_std: std dev of the Fast Fourier Transform (FFT) of the separated accelleration component due to body motion in the x-axis derived in time(g)

fBodyAccJerk_Y_std: std dev of the Fast Fourier Transform (FFT) of the separated accelleration component due to body motion in the y-axis derived in time(g)

fBodyAccJerk_Z_std: std dev of the Fast Fourier Transform (FFT) of the separated accelleration component due to body motion in the z-axis derived in time(g)

fBodyGyro_X_mean: mean of the Fast Fourier Transform (FFT) of the body angular velocity in the x-axis(radians/sec)

fBodyGyro_Y_mean: mean of the Fast Fourier Transform (FFT) of the body angular velocity in the y-axis(radians/sec)

fBodyGyro_Z_mean: mean of the Fast Fourier Transform (FFT) of the body angular velocity in the z-axis(radians/sec)

fBodyGyro_X_std: std dev of the Fast Fourier Transform (FFT) of the body angular velocity in the x-axis(radians/sec)

fBodyGyro_Y_std: std dev of the Fast Fourier Transform (FFT) of the body angular velocity in the y-axis(radians/sec)

fBodyGyro_Z_std: std dev of the Fast Fourier Transform (FFT) of the body angular velocity in the z-axis(radians/sec)

fBodyAccMag_mean: mean of the Fast Fourier Transform (FFT) of the Euclidean norm of the separated accelleration component due to body motion(g)

fBodyAccMag_std: std dev of the Fast Fourier Transform (FFT) of the Euclidean norm of the separated accelleration component due to body motion(g)

fBodyAccJerkMag_mean: mean of the Fast Fourier Transform (FFT) of the Euclidean norm of the separated accelleration component due to body motion derived in time(g)

fBodyAccJerkMag_std: std dev of the Fast Fourier Transform (FFT) of the Euclidean norm of the separated accelleration component due to body motion derived in time(g)

fBodyGyroMag_mean: mean of the Fast Fourier Transform (FFT) of the Euclidean norm of the body angular velocity (radians/sec)

fBodyGyroMag_std: std dev of the Fast Fourier Transform (FFT) of the Euclidean norm of the body angular velocity (radians/sec)

fBodyGyroJerkMag_mean: mean of the Fast Fourier Transform (FFT) of the Euclidean norm of the body angular velocity derived in time (radians/sec)

fBodyGyroJerkMag_std: std dev of the Fast Fourier Transform (FFT) of the Euclidean norm of the body angular velocity derived in time (radians/sec)



