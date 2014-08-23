# Coursera's Getting and Cleaning Data -- Programming Assignment
#   for Human Activity Recognition (HAR) dataset
#
# Reference: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

# create data subdirectory if it doesn't already exist
if (! file.exists("data")) {
  dir.create("data")
}

# download project data from the web and store as data/HAR.zip
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/HAR.zip", method = "curl")
# create a subdirectory in data directory to unzip the data/HAR.zip file
zipDir <- "data/zipdir"
dir.create(zipDir)
unzip("data/HAR.zip", exdir = zipDir)

# read features file
X.features <- read.table(paste(zipDir, "UCI HAR Dataset/features.txt", sep = "/"), as.is = TRUE)
# identify mean/std measurements by column number
X.m.sd <- c(1, 2, 3, 4, 5, 6, 41, 42, 43, 44, 45,
	    46, 81, 82, 83, 84, 85, 86, 121, 122, 123, 124,
	    125, 126, 161, 162, 163, 164, 165, 166, 201, 202, 214,
	    215, 227, 228, 240, 241, 253, 254, 266, 267, 268, 269,
	    270, 271, 345, 346, 347, 348, 349, 350, 424, 425, 426,
	    427, 428, 429, 503, 504, 516, 517, 529, 530, 542, 543)

# read the training datasets
X.train <- read.table(paste(zipDir, "UCI HAR Dataset/train/X_train.txt", sep = "/"))
y.train <- read.table(paste(zipDir, "UCI HAR Dataset/train/y_train.txt", sep = "/"))
s.train <- read.table(paste(zipDir, "UCI HAR Dataset/train/subject_train.txt", sep = "/"))
# combine training datasets - subject, activity, and measurements (mean/std only)
df.train <- cbind(s.train, y.train, X.train[, X.m.sd])

# read the test datasets
X.test <- read.table(paste(zipDir, "UCI HAR Dataset/test/X_test.txt", sep = "/"))
y.test <- read.table(paste(zipDir, "UCI HAR Dataset/test/y_test.txt", sep = "/"))
s.test <- read.table(paste(zipDir, "UCI HAR Dataset/test/subject_test.txt", sep = "/"))
# combine test datasets - subject, activity, and measurements (mean/std only)
df.test <- cbind(s.test, y.test, X.test[, X.m.sd])

# merge training and test dataframes
df.tidy1 <- rbind(df.train, df.test)
# use factor variable to assign descriptive names for activity feature
y.f <- factor(df.tidy1[, 2], levels = 1:6,
	      labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS",
	    	         "SITTING", "STANDING", "LAYING"))
# replace activity feature integer by a factor variable
df.tidy1[, 2] <- y.f
# assign descriptive column names, such as Subject and Activity.
# use measurement feature names based on feature names used in raw dataset.
colnames(df.tidy1) = c("Subject", "Activity", X.features[X.m.sd, 2])
# create tidy1 dataset
write.table(df.tidy1, file = "data/HARtidy1.txt")

# 'un-factor' Activity feature so that its column mean can be calculated
df.tidy1[, 2] <- as.numeric(df.tidy1[, 2])
# split tidy1 dataset into groupings of subject.activity
groups <- split(df.tidy1, list(df.tidy1$Subject, df.tidy1$Activity), drop = TRUE)
# sapply returns a matrix
matrix.tidy2 <- sapply(groups, colMeans)
# transpose matrix to get measurements in columns vs. rows
df.tidy2 <- as.data.frame(t(matrix.tidy2))
# factor Activity feature
y.f <- factor(df.tidy2[, 2], levels = 1:6,
	      labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS",
	    	         "SITTING", "STANDING", "LAYING"))
df.tidy2[, 2] <- y.f
# create the tidy2 dataset
write.table(df.tidy2, file = "data/HARtidy2.txt", row.name = FALSE)
