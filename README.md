Coursera's Getting and Cleaning Data -- Programming Assignment for Human Activity Recognition (HAR) dataset

Reference: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
This file provides a high-level summary of how I approached the programming assignment.

All of my code is in `run_analysis.R`

The approach I used for the first tidy datset is:

1. Download the data file from the web and unzip it.
2. Read the features.txt file to get measurement feature names.
  * Manually enter the column number in R script for each mean/std measurement.
3. Read all 3 parts (Subject, Activity, Measurements) for training data.
4. Read all 3 parts (Subject, Activity, Measurements) for test data.
5. Include only mean/std measurements in the training and test dataframes.
6. Merge the training and test dataframes into a tidy dataframe.
7. Factor the Activity feature to provide user-friendly labels.
8. Use the labels from the raw data for the measurement variables.
9. Write the tidy dataset to disk using write.table().


For the second tidy dataset:

1. Start with the first tidy dataset.
2. Un-factor the Activity feature so that the mean function works properly.
3. Split() the tidy data into Subject.Activity groupings.
4. Calculate the column means for all records in each grouping.
  * Use sapply() to combine the results (a matrix is returned).
5. Create a dataframe from the transposed matrix so that rows and columns are correct.
6. Factor the Activity feature to provide user-friendly labels.
7. Write the tidy dataset to disk using write.table().
