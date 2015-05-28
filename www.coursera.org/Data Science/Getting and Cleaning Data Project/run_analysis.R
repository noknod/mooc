# read raw data, merge test and training
data_dir <- "UCI HAR Dataset"

data_tmp <- read.table(file.path(paste(data_dir, "/train/X_train.txt", sep = "")))
data_train <- cbind(
    read.table(file.path(paste(data_dir, "/train/subject_train.txt", sep = "")), 
               col.names=c("SubjectId")),
    read.table(file.path(paste(data_dir, "/train/y_train.txt", sep = "")), 
               col.names=c("ActivityId")),
    data_tmp)

data_tmp <- read.table(file.path(paste(data_dir, "/test/X_test.txt", sep = "")))
data_test <- cbind(
    read.table(file.path(paste(data_dir, "/test/subject_test.txt", sep = "")), 
               col.names=c("SubjectId")),
    read.table(file.path(paste(data_dir, "/test/y_test.txt", sep = "")), 
               col.names=c("ActivityId")),
    data_tmp)
 
raw_data <- rbind(data_train, data_test)
rm(data_test ,data_train, data_tmp)

# extract measurements on the mean and standard deviation
features <- read.table(file.path(paste(data_dir, "/features.txt", sep = "")), 
                       colClasses = c("character"))[, 2]
mean_std_names = grep("mean[(][)]|std()", features, ignore.case = TRUE, perl = TRUE)
features <- features[mean_std_names]

data <- raw_data[, c(1, 2, mean_std_names + 2)]


# name the activities
activity <- read.table(file.path(paste(data_dir, "/activity_labels.txt", sep = "")), 
                       colClasses = c("character"), col.names = c("ActivityId", "Activity"))
activities <- factor(data$ActivityId, levels=activity$ActivityId, labels=activity$Activity)

data <- cbind(data[, c(1, 2)], Activity = activities, data[, 3:length(colnames(data))])


# label the data set with descriptive variable names
new_labels <- gsub('\\(|\\)', "", features, perl = TRUE)
new_labels <- make.names(new_labels)
new_labels <- gsub('Acc', "Acceleration", new_labels)
new_labels <- gsub('Gyro', "AngularVelocity", new_labels)
new_labels <- gsub('Mag', "Magnitude", new_labels)
new_labels <- gsub('\\.mean', ".Mean", new_labels)
new_labels <- gsub('\\.std', ".StandardDeviation", new_labels)

names(data)[4:length(colnames(data))] <- new_labels


# create a tidy data set
require(plyr)

tidy_data <- ddply(data, c("SubjectId","Activity"), numcolwise(mean))

write.table(tidy_data, file="result_tidy_data.txt", row.names=FALSE)