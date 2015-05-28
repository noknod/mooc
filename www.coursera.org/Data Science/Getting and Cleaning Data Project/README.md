
# Getting and Cleaning Data Project


## How to create the tidy data set

1. download [compressed raw data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. unzip raw data `UCI HAR Dataset` to the working directory
3. execute script `run_analisys.R script` (it requires the plyr package) in the working directory

The resulting tidy data set will be created in the working directory named by `result_tidy_data.txt`. It contains one row for each subject/activity pair with averaged features from the original dataset.