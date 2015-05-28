
# Code Book

The raw data sets are processed with run_analisys.R script to create a tidy data
set where numeric variables from original data sets are averaged for each activity and each subject.

## Task

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Variables in processed (tidy) data set

* `SubjectId` - The participant ("subject") ID
* `Activity` - The label of the activity performed when the corresponding measurements were taken
* `ActivityId` - The ID of the activity performed when the corresponding measurements were taken

These columns were taken from original data and averaged:

* `tBodyAcceleration.Mean.X` -  (column `1`)
* `tBodyAcceleration.Mean.Y` -  (column `2`)
* `tBodyAcceleration.Mean.Z` -  (column `3`)
* `tBodyAcceleration.StandardDeviation.X` -  (column `4`)
* `tBodyAcceleration.StandardDeviation.Y` -  (column `5`)
* `tBodyAcceleration.StandardDeviation.Z` -  (column `6`)
* `tGravityAcceleration.Mean.X` - (column `41`)
* `tGravityAcceleration.Mean.Y` - (column `42`)
* `tGravityAcceleration.Mean.Z` - (column `43`)
* `tGravityAcceleration.StandardDeviation.X` - (column `44`)
* `tGravityAcceleration.StandardDeviation.Y` - (column `45`)
* `tGravityAcceleration.StandardDeviation.Z` - (column `46`)
* `tBodyAccelerationJerk.Mean.X` - (column `81`)
* `tBodyAccelerationJerk.Mean.Y` - (column `82`)
* `tBodyAccelerationJerk.Mean.Z` - (column `83`)
* `tBodyAccelerationJerk.StandardDeviation.X` - (column `84`)
* `tBodyAccelerationJerk.StandardDeviation.Y` - (column `85`)
* `tBodyAccelerationJerk.StandardDeviation.Z` - (column `86`)
* `tBodyAngularVelocity.Mean.X` - (column `121`)
* `tBodyAngularVelocity.Mean.Y` - (column `122`)
* `tBodyAngularVelocity.Mean.Z` - (column `123`)
* `tBodyAngularVelocity.StandardDeviation.X` - (column `124`)
* `tBodyAngularVelocity.StandardDeviation.Y` - (column `125`)
* `tBodyAngularVelocity.StandardDeviation.Z` - (column `126`)
* `tBodyAngularVelocityJerk.Mean.X` - (column `161`)
* `tBodyAngularVelocityJerk.Mean.Y` - (column `162`)
* `tBodyAngularVelocityJerk.Mean.Z` - (column `163`)
* `tBodyAngularVelocityJerk.StandardDeviation.X` - (column `164`)
* `tBodyAngularVelocityJerk.StandardDeviation.Y` - (column `165`)
* `tBodyAngularVelocityJerk.StandardDeviation.Z` - (column `166`)
* `tBodyAccelerationMagnitude.Mean` - (column `201`)
* `tBodyAccelerationMagnitude.StandardDeviation` - (column `202`)
* `tGravityAccelerationMagnitude.Mean` - (column `214`)
* `tGravityAccelerationMagnitude.StandardDeviation` - (column `215`)
* `tBodyAccelerationJerkMagnitude.Mean` - (column `227`)
* `tBodyAccelerationJerkMagnitude.StandardDeviation` - (column `228`)
* `tBodyAngularVelocityMagnitude.Mean` - (column `240`)
* `tBodyAngularVelocityMagnitude.StandardDeviation` - (column `241`)
* `tBodyAngularVelocityJerkMagnitude.Mean` - (column `253`)
* `tBodyAngularVelocityJerkMagnitude.StandardDeviation` - (column `254`)
* `fBodyAcceleration.Mean.X` - (column `266`)
* `fBodyAcceleration.Mean.Y` - (column `267`)
* `fBodyAcceleration.Mean.Z` - (column `268`)
* `fBodyAcceleration.StandardDeviation.X` - (column `269`)
* `fBodyAcceleration.StandardDeviation.Y` - (column `270`)
* `fBodyAcceleration.StandardDeviation.Z` - (column `271`)
* `fBodyAccelerationJerk.Mean.X` - (column `345`)
* `fBodyAccelerationJerk.Mean.Y` - (column `346`)
* `fBodyAccelerationJerk.Mean.Z` - (column `347`)
* `fBodyAccelerationJerk.StandardDeviation.X` - (column `348`)
* `fBodyAccelerationJerk.StandardDeviation.Y` - (column `349`)
* `fBodyAccelerationJerk.StandardDeviation.Z` - (column `350`)
* `fBodyAngularVelocity.Mean.X` - (column `424`)
* `fBodyAngularVelocity.Mean.Y` - (column `425`)
* `fBodyAngularVelocity.Mean.Z` - (column `426`)
* `fBodyAngularVelocity.StandardDeviation.X` - (column `427`)
* `fBodyAngularVelocity.StandardDeviation.Y` - (column `428`)
* `fBodyAngularVelocity.StandardDeviation.Z` - (column `429`)
* `fBodyAccelerationMagnitude.Mean` - (column `503`)
* `fBodyAccelerationMagnitude.StandardDeviation` - (column `504`)
* `fBodyBodyAccelerationJerkMagnitude.Mean` - (column `516`)
* `fBodyBodyAccelerationJerkMagnitude.StandardDeviation` - (column `517`)
* `fBodyBodyAngularVelocityMagnitude.Mean` - (column `529`)
* `fBodyBodyAngularVelocityMagnitude.StandardDeviation` - (column `530`)
* `fBodyBodyAngularVelocityJerkMagnitude.Mean` - (column `542`)
* `fBodyBodyAngularVelocityJerkMagnitude.StandardDeviation` - (column `543`)