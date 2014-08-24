## CodeBook for Human Activity Recognition (HAR) Datasets

Reference: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
This codebook provides a description of two datasets: HARtidy1.txt and HARtidy2.txt

### HARtidy1.txt

This dataset was created by merging the Training and Test datasets from the original datasets. This dataset contains a Subject, an Activity, and several Measurements. The Measurements are a subset (Mean and Standard Deviation only) of the measurements contained in the original datasets. None of the Measurements were modified numerically. The dataset was formatted using the write.table() function of R, which contains one record per line, with features separated by a space.

#### Feature Descriptions

* Subject
  - An integer from 1-30 that identifies the one of the 30 volunteers who participated in the experiment. This feature has no units.

* Activity
  - One of 6 activities associated with the corresponding measurements. This feature has no units. The Activity field appears as a string in the dataset for ease of understanding (e.g., WALKING). The numbers 1-6 were used in the original datasets, and are mapped to the activity labels as shown below.
    * 1 WALKING
    * 2 WALKING_UPSTAIRS
    * 3 WALKING_DOWNSTAIRS
    * 4 SITTING
    * 5 STANDING
    * 6 LAYING

* Measurements
  - The measurements fall into the 17 groups listed below. Some of the measurements have individual X, Y, and Z components. Only the mean and standard deviation values of each measurement were selected for the HARtidy1.txt dataset. Using the embedded accelerometer and gyroscope of a smartphone (Samsung Galaxy S II), 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The features selected for the original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
    * tBodyAcc-XYZ
    * tGravityAcc-XYZ
    * tBodyAccJerk-XYZ
    * tBodyGyro-XYZ
    * tBodyGyroJerk-XYZ
    * tBodyAccMag
    * tGravityAccMag
    * tBodyAccJerkMag
    * tBodyGyroMag
    * tBodyGyroJerkMag
    * fBodyAcc-XYZ
    * fBodyAccJerk-XYZ
    * fBodyGyro-XYZ
    * fBodyAccMag
    * fBodyAccJerkMag
    * fBodyGyroMag
    * fBodyGyroJerkMag
  - The following 66 measurements were selected from the 561 measurements in the original datasets. The column number of the original measurement is shown for reference. None of the selected measurements were modified numerically nor converted to different units, and all are normalized to fall within the range of [-1,1]. The names of the measurements are unchanged from the original datasets. Note that `mean()` and `std()` refer to the mean and standard deviation components of each measurement.
    * 1 tBodyAcc-mean()-X
    * 2 tBodyAcc-mean()-Y
    * 3 tBodyAcc-mean()-Z
    * 4 tBodyAcc-std()-X
    * 5 tBodyAcc-std()-Y
    * 6 tBodyAcc-std()-Z
    * 41 tGravityAcc-mean()-X
    * 42 tGravityAcc-mean()-Y
    * 43 tGravityAcc-mean()-Z
    * 44 tGravityAcc-std()-X
    * 45 tGravityAcc-std()-Y
    * 46 tGravityAcc-std()-Z
    * 81 tBodyAccJerk-mean()-X
    * 82 tBodyAccJerk-mean()-Y
    * 83 tBodyAccJerk-mean()-Z
    * 84 tBodyAccJerk-std()-X
    * 85 tBodyAccJerk-std()-Y
    * 86 tBodyAccJerk-std()-Z
    * 121 tBodyGyro-mean()-X
    * 122 tBodyGyro-mean()-Y
    * 123 tBodyGyro-mean()-Z
    * 124 tBodyGyro-std()-X
    * 125 tBodyGyro-std()-Y
    * 126 tBodyGyro-std()-Z
    * 161 tBodyGyroJerk-mean()-X
    * 162 tBodyGyroJerk-mean()-Y
    * 163 tBodyGyroJerk-mean()-Z
    * 164 tBodyGyroJerk-std()-X
    * 165 tBodyGyroJerk-std()-Y
    * 166 tBodyGyroJerk-std()-Z
    * 201 tBodyAccMag-mean()
    * 202 tBodyAccMag-std()
    * 214 tGravityAccMag-mean()
    * 215 tGravityAccMag-std()
    * 227 tBodyAccJerkMag-mean()
    * 228 tBodyAccJerkMag-std()
    * 240 tBodyGyroMag-mean()
    * 241 tBodyGyroMag-std()
    * 253 tBodyGyroJerkMag-mean()
    * 254 tBodyGyroJerkMag-std()
    * 266 fBodyAcc-mean()-X
    * 267 fBodyAcc-mean()-Y
    * 268 fBodyAcc-mean()-Z
    * 269 fBodyAcc-std()-X
    * 270 fBodyAcc-std()-Y
    * 271 fBodyAcc-std()-Z
    * 345 fBodyAccJerk-mean()-X
    * 346 fBodyAccJerk-mean()-Y
    * 347 fBodyAccJerk-mean()-Z
    * 348 fBodyAccJerk-std()-X
    * 349 fBodyAccJerk-std()-Y
    * 350 fBodyAccJerk-std()-Z
    * 424 fBodyGyro-mean()-X
    * 425 fBodyGyro-mean()-Y
    * 426 fBodyGyro-mean()-Z
    * 427 fBodyGyro-std()-X
    * 428 fBodyGyro-std()-Y
    * 429 fBodyGyro-std()-Z
    * 503 fBodyAccMag-mean()
    * 504 fBodyAccMag-std()
    * 516 fBodyBodyAccJerkMag-mean()
    * 517 fBodyBodyAccJerkMag-std()
    * 529 fBodyBodyGyroMag-mean()
    * 530 fBodyBodyGyroMag-std()
    * 542 fBodyBodyGyroJerkMag-mean()
    * 543 fBodyBodyGyroJerkMag-std()

### HARtidy2.txt

This dataset was created by summarizing the HARtidy1.txt dataset. This dataset provides the mean value of all measurements grouped by each Subject and Activity combination. Accordingly, this dataset contains a Subject, an Activity, and the mean values of 66 Measurements. The dataset was formatted using the write.table() function of R, which contains one record per line, with features separated by a space.

#### Feature Descriptions

* Subject
  - An integer from 1-30 that identifies the one of the 30 volunteers who participated in the experiment. This feature has no units.

* Activity
  - One of 6 activities associated with the corresponding measurements. This feature has no units. The Activity field appears as a string in the dataset for ease of understanding (e.g., WALKING). The numbers 1-6 were used in the original datasets, and are mapped to the activity labels as shown below.
    * 1 WALKING
    * 2 WALKING_UPSTAIRS
    * 3 WALKING_DOWNSTAIRS
    * 4 SITTING
    * 5 STANDING
    * 6 LAYING

* Measurements
  - The average value of the corresponding measurements in HARtidy1,txt, grouped by each Subject and Activity combination. The feature names and units are unchanged from those used in HARtidy1.txt. Average values for each measurement will fall into the range of [-1,1].
    * tBodyAcc-mean()-X
    * tBodyAcc-mean()-Y
    * tBodyAcc-mean()-Z
    * tBodyAcc-std()-X
    * tBodyAcc-std()-Y
    * tBodyAcc-std()-Z
    * tGravityAcc-mean()-X
    * tGravityAcc-mean()-Y
    * tGravityAcc-mean()-Z
    * tGravityAcc-std()-X
    * tGravityAcc-std()-Y
    * tGravityAcc-std()-Z
    * tBodyAccJerk-mean()-X
    * tBodyAccJerk-mean()-Y
    * tBodyAccJerk-mean()-Z
    * tBodyAccJerk-std()-X
    * tBodyAccJerk-std()-Y
    * tBodyAccJerk-std()-Z
    * tBodyGyro-mean()-X
    * tBodyGyro-mean()-Y
    * tBodyGyro-mean()-Z
    * tBodyGyro-std()-X
    * tBodyGyro-std()-Y
    * tBodyGyro-std()-Z
    * tBodyGyroJerk-mean()-X
    * tBodyGyroJerk-mean()-Y
    * tBodyGyroJerk-mean()-Z
    * tBodyGyroJerk-std()-X
    * tBodyGyroJerk-std()-Y
    * tBodyGyroJerk-std()-Z
    * tBodyAccMag-mean()
    * tBodyAccMag-std()
    * tGravityAccMag-mean()
    * tGravityAccMag-std()
    * tBodyAccJerkMag-mean()
    * tBodyAccJerkMag-std()
    * tBodyGyroMag-mean()
    * tBodyGyroMag-std()
    * tBodyGyroJerkMag-mean()
    * tBodyGyroJerkMag-std()
    * fBodyAcc-mean()-X
    * fBodyAcc-mean()-Y
    * fBodyAcc-mean()-Z
    * fBodyAcc-std()-X
    * fBodyAcc-std()-Y
    * fBodyAcc-std()-Z
    * fBodyAccJerk-mean()-X
    * fBodyAccJerk-mean()-Y
    * fBodyAccJerk-mean()-Z
    * fBodyAccJerk-std()-X
    * fBodyAccJerk-std()-Y
    * fBodyAccJerk-std()-Z
    * fBodyGyro-mean()-X
    * fBodyGyro-mean()-Y
    * fBodyGyro-mean()-Z
    * fBodyGyro-std()-X
    * fBodyGyro-std()-Y
    * fBodyGyro-std()-Z
    * fBodyAccMag-mean()
    * fBodyAccMag-std()
    * fBodyBodyAccJerkMag-mean()
    * fBodyBodyAccJerkMag-std()
    * fBodyBodyGyroMag-mean()
    * fBodyBodyGyroMag-std()
    * fBodyBodyGyroJerkMag-mean()
    * fBodyBodyGyroJerkMag-std()
