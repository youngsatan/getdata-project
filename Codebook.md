# Codebook for tidy data site


## About Data source
Raw data are from <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">UCI HAR Dataset</a>

A full description is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Data dictionarry
For this tidy dataset, these signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ

- tGravityAcc-XYZ

- tBodyAccJerk-XYZ

- tBodyGyro-XYZ

- tBodyGyroJerk-XYZ

- tBodyAccMag

- tGravityAccMag

- tBodyAccJerkMag

- tBodyGyroMag

- tBodyGyroJerkMag

- fBodyAcc-XYZ

- fBodyAccJerk-XYZ

- fBodyGyro-XYZ

- fBodyAccMag

- fBodyAccJerkMag

- fBodyGyroMag

- fBodyGyroJerkMag

The set of variables that were estimated (and kept for this assignment) from these signals are:

- mean(): 

    Mean value

- std(): 
    
    Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean


- tBodyAccMean

- tBodyAccJerkMean

- tBodyGyroMean

- tBodyGyroJerkMean