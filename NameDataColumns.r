NameDataColumns <- function(inData) {
    ### NameDataColumns(inData) - Sets the column names of the
    ### data.frame supplied.  Any changes to the column filtering 
    ### logic will likely require changes in this function.  Also
    ### note that that Activity Name has been included as the first
    ### column.
    ###
    ### Parameters
    ###  - inData - Input data frame
    ###
    ### Returns
    ###  - n/a
    
    colNames <- c("ActivityName",
                  "SubjectID",
                  "BodyAccelerometer-mean-Xaxis",
                  "BodyAccelerometer-mean-Yaxis",
                  "BodyAccelerometer-mean-Zaxis",
                  "BodyAccelerometer-stdev-Xaxis",
                  "BodyAccelerometer-stdev-Yaxis",
                  "BodyAccelerometer-stdev-Zaxis",
                  "GravityAccelerometer-mean-Xaxis",
                  "GravityAccelerometer-mean-Yaxis",
                  "GravityAccelerometer-mean-Zaxis",
                  "GravityAccelerometer-stdev-Xaxis",
                  "GravityAccelerometer-stdev-Yaxis",
                  "GravityAccelerometer-stdev-Zaxis",
                  "BodyAccelerometerJerk-mean-Xaxis",
                  "BodyAccelerometerJerk-mean-Yaxis",
                  "BodyAccelerometerJerk-mean-Zaxis",
                  "BodyAccelerometerJerk-stdev-Xaxis",
                  "BodyAccelerometerJerk-stdev-Yaxis",
                  "BodyAccelerometerJerk-stdev-Zaxis",
                  "BodyGyro-mean-Xaxis",
                  "BodyGyro-mean-Yaxis",
                  "BodyGyro-mean-Zaxis",
                  "BodyGyro-stdev-Xaxis",
                  "BodyGyro-stdev-Yaxis",
                  "BodyGyro-stdev-Zaxis",
                  "BodyGyroJerk-mean-Xaxis",
                  "BodyGyroJerk-mean-Yaxis",
                  "BodyGyroJerk-mean-Zaxis",
                  "BodyGyroJerk-stdev-Xaxis",
                  "BodyGyroJerk-stdev-Yaxis",
                  "BodyGyroJerk-stdev-Zaxis",
                  "BodyAccelerometerMagnitude-mean",
                  "BodyAccelerometerMagnitude-std",
                  "GravityAccelerometerMagnitude-mean",
                  "GravityAccelerometerMagnitude-stdev",
                  "BodyAccelerometerJerkMagnitude-mean",
                  "BodyAccelerometerJerkMagnitude-stdev",
                  "BodyGyroMagnitude-mean",
                  "BodyGyroMagnitude-stdev",
                  "BodyGyroJerkMagnitude-mean",
                  "BodyGyroJerkMagnitude-stdev",
                  "freqdomain-BodyAccelerometer-mean-Xaxis",
                  "freqdomain-BodyAccelerometer-mean-Yaxis",
                  "freqdomain-BodyAccelerometer-mean-Zaxis",
                  "freqdomain-BodyAccelerometer-stdev-Xaxis",
                  "freqdomain-BodyAccelerometer-stdev-Yaxis",
                  "freqdomain-BodyAccelerometer-stdev-Zaxis",
                  "freqdomain-BodyAccelerometerJerk-mean-Xaxis",
                  "freqdomain-BodyAccelerometerJerk-mean-Yaxis",
                  "freqdomain-BodyAccelerometerJerk-mean-Zaxis",
                  "freqdomain-BodyAccelerometerJerk-stdev-Xaxis",
                  "freqdomain-BodyAccelerometerJerk-stdev-Yaxis",
                  "freqdomain-BodyAccelerometerJerk-stdev-Zaxis",
                  "freqdomain-BodyGyro-mean-Xaxis",
                  "freqdomain-BodyGyro-mean-Yaxis",
                  "freqdomain-BodyGyro-mean-Zaxis",
                  "freqdomain-BodyGyro-stdev-Xaxis",
                  "freqdomain-BodyGyro-stdev-Yaxis",
                  "freqdomain-BodyGyro-stdev-Zaxis",
                  "freqdomain-BodyAccelerometerMagnitude-mean",
                  "freqdomain-BodyAccelerometerMagnitude-stdev",
                  "freqdomain-BodyAccelerometerJerkMagnitude-mean",
                  "freqdomain-BodyAccelerometerJerkMagnitude-stdev",
                  "freqdomain-BodyGyroMagnitude-mean",
                  "freqdomain-BodyGyroMagnitude-stdev",
                  "freqdomain-BodyGyroJerkMagnitude-mean",
                  "freqdomain-BodyGyroJerkMagnitude-stdev")
    
    colnames(inData) <- colNames
    
    return(inData)
}