Code Book
=========
The goal of the "Getting And Cleaning Data" course project is to generate a "tidy data" file containing the averages for all relevant value columns broken down by multiple category combinations.  The source data consists of measurement files containing numerous value columns (many of which will not be used) and separate Activity and Subject (observation category) files.  Additionally, the files are also partitioned between "Test" and "Training" data. 

Raw Source Data
---------------
Human Activity Recognition Using Smartphones Dataset  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Università degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws  
[Link to Raw Data (.zip file)](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Relevant Source Files
--------------------
`/UCI HAR Dataset/features.txt`  
**Description:** List of features (measurement names).  Each row corresponds to a column in the Observation file.  
**Format:**  Text file, space delimited, no headings.  
**Element(s):**

1. Feature Column Index
2. Feature Name (somewhat friendly)

---
`/UCI HAR Dataset/test/subject_test.txt`  
**Description:** Test Subject/Observation mapping.  Each row relates to the corresponding Observation row in the "UCI HAR Dataset/test/X_test.txt" file.   
**Format:**  Text file, single element per row, no headings.  
**Element(s):**

1. Subject ID

---
`/UCI HAR Dataset/train/subject_train.txt`  
**Description:** Training Subject/Observation mapping.  Each row relates to the corresponding Observation row in the "UCI HAR Dataset/train/X_train.txt" file.   
**Format:**  Text file, space delimited, no headings.  
**Element(s):**

1. Subject ID

---
`/UCI HAR Dataset/test/X_test.txt`  
**Description:** Test observations.  
**Format:**  Text file, space delimited, no headings.  
**Element(s):** 561 measurements per row, corresponding to the row items in the "feature.txt" data (most measurements will not be used).  

---
`/UCI HAR Dataset/train/X_train.txt`  
**Description:** Training observations.  
**Format:**  Text file, space delimited, no headings.  
**Element(s):** 561 measurements per row, corresponding to the row items in the "feature.txt" data (most measurements will not be used).  

---
`/UCI HAR Dataset/test/y_test.txt`  
**Description:** - Test Activity/Observation mapping.  Each row relates to the corresponding Observation row in the "UCI HAR Dataset/test/X_test.txt" file.   
**Format:**  Text file, single element per row, no headings.  
**Element(s):**

1. Activity ID

---
`/UCI HAR Dataset/train/y_train.txt`  
**Description:** - Training Activity/Observation mapping.  Each row relates to the corresponding Observation row in the "UCI HAR Dataset/train/X_train.txt" file.   
**Format:**  Text file, single element per row, no headings.  
**Element(s):**

1. Activity ID

Resulting "Tidy Data"
---------------------
`tidydataresults.txt`  
**Description:** - "Tidy Data" format requested in the Course Project documentation.   
**Format:**  Text file, space delimited, headings in row 1.  
**Element(s):**  
**IMPORTANT** - The assignment was unclear as to the filtering for "mean and standard deviation" measurements, especially the various "mean()", "meanFreq" and "angle(...Mean)" measurements.  I chose to specifically look for "mean()" and "std()" features, therefore I have 66 measurement columns.

1. **ActivityName** - Character, values are "Walking", "Walking (Upstairs)", "Walking (Downstairs)", "Sitting", "Standing" and "Laying".
2. **SubjectID** - Integer, Subject's ID.  Values in datasets were 1 thru 30.
3. **BodyAccelerometer-mean-Xaxis** - Numeric, Average of all "BodyAccelerometer-mean-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
4. **BodyAccelerometer-mean-Yaxis** - Numeric, Average of all "BodyAccelerometer-mean-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
5. **BodyAccelerometer-mean-Zaxis** - Numeric, Average of all "BodyAccelerometer-mean-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
6. **BodyAccelerometer-stdev-Xaxis** - Numeric, Average of all "BodyAccelerometer-stdev-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
7. **BodyAccelerometer-stdev-Yaxis** - Numeric, Average of all "BodyAccelerometer-stdev-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
8. **BodyAccelerometer-stdev-Zaxis** - Numeric, Average of all "BodyAccelerometer-stdev-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
9. **GravityAccelerometer-mean-Xaxis** - Numeric, Average of all "GravityAccelerometer-mean-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
10. **GravityAccelerometer-mean-Yaxis** - Numeric, Average of all "GravityAccelerometer-mean-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
11. **GravityAccelerometer-mean-Zaxis** - Numeric, Average of all "GravityAccelerometer-mean-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
12. **GravityAccelerometer-stdev-Xaxis** - Numeric, Average of all "GravityAccelerometer-stdev-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
13. **GravityAccelerometer-stdev-Yaxis** - Numeric, Average of all "GravityAccelerometer-stdev-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
14. **GravityAccelerometer-stdev-Zaxis** - Numeric, Average of all "GravityAccelerometer-stdev-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
15. **BodyAccelerometerJerk-mean-Xaxis** - Numeric, Average of all "BodyAccelerometerJerk-mean-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
16. **BodyAccelerometerJerk-mean-Yaxis** - Numeric, Average of all "BodyAccelerometerJerk-mean-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
17. **BodyAccelerometerJerk-mean-Zaxis** - Numeric, Average of all "BodyAccelerometerJerk-mean-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
18. **BodyAccelerometerJerk-stdev-Xaxis** - Numeric, Average of all "BodyAccelerometerJerk-stdev-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
19. **BodyAccelerometerJerk-stdev-Yaxis** - Numeric, Average of all "BodyAccelerometerJerk-stdev-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
20. **BodyAccelerometerJerk-stdev-Zaxis** - Numeric, Average of all "BodyAccelerometerJerk-stdev-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
21. **BodyGyro-mean-Xaxis** - Numeric, Average of all "BodyGyro-mean-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
22. **BodyGyro-mean-Yaxis** - Numeric, Average of all "BodyGyro-mean-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
23. **BodyGyro-mean-Zaxis** - Numeric, Average of all "BodyGyro-mean-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
24. **BodyGyro-stdev-Xaxis** - Numeric, Average of all "BodyGyro-stdev-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
25. **BodyGyro-stdev-Yaxis** - Numeric, Average of all "BodyGyro-stdev-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
26. **BodyGyro-stdev-Zaxis** - Numeric, Average of all "BodyGyro-stdev-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
27. **BodyGyroJerk-mean-Xaxis** - Numeric, Average of all "BodyGyroJerk-mean-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
28. **BodyGyroJerk-mean-Yaxis** - Numeric, Average of all "BodyGyroJerk-mean-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
29. **BodyGyroJerk-mean-Zaxis** - Numeric, Average of all "BodyGyroJerk-mean-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
30. **BodyGyroJerk-stdev-Xaxis** - Numeric, Average of all "BodyGyroJerk-stdev-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
31. **BodyGyroJerk-stdev-Yaxis** - Numeric, Average of all "BodyGyroJerk-stdev-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
32. **BodyGyroJerk-stdev-Zaxis** - Numeric, Average of all "BodyGyroJerk-stdev-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
33. **BodyAccelerometerMagnitude-mean** - Numeric, Average of all "BodyAccelerometerMagnitude-mean" columns for the "ActivityName"/"SubjectID" combination.
34. **BodyAccelerometerMagnitude-std** - Numeric, Average of all "BodyAccelerometerMagnitude-std" columns for the "ActivityName"/"SubjectID" combination.
35. **GravityAccelerometerMagnitude-mean** - Numeric, Average of all "GravityAccelerometerMagnitude-mean" columns for the "ActivityName"/"SubjectID" combination.
36. **GravityAccelerometerMagnitude-stdev** - Numeric, Average of all "GravityAccelerometerMagnitude-stdev" columns for the "ActivityName"/"SubjectID" combination.
37. **BodyAccelerometerJerkMagnitude-mean** - Numeric, Average of all "BodyAccelerometerJerkMagnitude-mean" columns for the "ActivityName"/"SubjectID" combination.
38. **BodyAccelerometerJerkMagnitude-stdev** - Numeric, Average of all "BodyAccelerometerJerkMagnitude-stdev" columns for the "ActivityName"/"SubjectID" combination.
39. **BodyGyroMagnitude-mean** - Numeric, Average of all "BodyGyroMagnitude-mean" columns for the "ActivityName"/"SubjectID" combination.
40. **BodyGyroMagnitude-stdev** - Numeric, Average of all "BodyGyroMagnitude-stdev" columns for the "ActivityName"/"SubjectID" combination.
41. **BodyGyroJerkMagnitude-mean** - Numeric, Average of all "BodyGyroJerkMagnitude-mean" columns for the "ActivityName"/"SubjectID" combination.
42. **BodyGyroJerkMagnitude-stdev** - Numeric, Average of all "BodyGyroJerkMagnitude-stdev" columns for the "ActivityName"/"SubjectID" combination.
43. **freqdomain-BodyAccelerometer-mean-Xaxis** - Numeric, Average of all "freqdomain-BodyAccelerometer-mean-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
44. **freqdomain-BodyAccelerometer-mean-Yaxis** - Numeric, Average of all "freqdomain-BodyAccelerometer-mean-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
45. **freqdomain-BodyAccelerometer-mean-Zaxis** - Numeric, Average of all "freqdomain-BodyAccelerometer-mean-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
46. **freqdomain-BodyAccelerometer-stdev-Xaxis** - Numeric, Average of all "freqdomain-BodyAccelerometer-stdev-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
47. **freqdomain-BodyAccelerometer-stdev-Yaxis** - Numeric, Average of all "freqdomain-BodyAccelerometer-stdev-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
48. **freqdomain-BodyAccelerometer-stdev-Zaxis** - Numeric, Average of all "freqdomain-BodyAccelerometer-stdev-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
49. **freqdomain-BodyAccelerometerJerk-mean-Xaxis** - Numeric, Average of all "freqdomain-BodyAccelerometerJerk-mean-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
50. **freqdomain-BodyAccelerometerJerk-mean-Yaxis** - Numeric, Average of all "freqdomain-BodyAccelerometerJerk-mean-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
51. **freqdomain-BodyAccelerometerJerk-mean-Zaxis** - Numeric, Average of all "freqdomain-BodyAccelerometerJerk-mean-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
52. **freqdomain-BodyAccelerometerJerk-stdev-Xaxis** - Numeric, Average of all "freqdomain-BodyAccelerometerJerk-stdev-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
53. **freqdomain-BodyAccelerometerJerk-stdev-Yaxis** - Numeric, Average of all "freqdomain-BodyAccelerometerJerk-stdev-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
54. **freqdomain-BodyAccelerometerJerk-stdev-Zaxis** - Numeric, Average of all "freqdomain-BodyAccelerometerJerk-stdev-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
55. **freqdomain-BodyGyro-mean-Xaxis** - Numeric, Average of all "freqdomain-BodyGyro-mean-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
56. **freqdomain-BodyGyro-mean-Yaxis** - Numeric, Average of all "freqdomain-BodyGyro-mean-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
57. **freqdomain-BodyGyro-mean-Zaxis** - Numeric, Average of all "freqdomain-BodyGyro-mean-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
58. **freqdomain-BodyGyro-stdev-Xaxis** - Numeric, Average of all "freqdomain-BodyGyro-stdev-Xaxis" columns for the "ActivityName"/"SubjectID" combination.
59. **freqdomain-BodyGyro-stdev-Yaxis** - Numeric, Average of all "freqdomain-BodyGyro-stdev-Yaxis" columns for the "ActivityName"/"SubjectID" combination.
60. **freqdomain-BodyGyro-stdev-Zaxis** - Numeric, Average of all "freqdomain-BodyGyro-stdev-Zaxis" columns for the "ActivityName"/"SubjectID" combination.
61. **freqdomain-BodyAccelerometerMagnitude-mean** - Numeric, Average of all "freqdomain-BodyAccelerometerMagnitude-mean" columns for the "ActivityName"/"SubjectID" combination.
62. **freqdomain-BodyAccelerometerMagnitude-stdev** - Numeric, Average of all "freqdomain-BodyAccelerometerMagnitude-stdev" columns for the "ActivityName"/"SubjectID" combination.
63. **freqdomain-BodyAccelerometerJerkMagnitude-mean** - Numeric, Average of all "freqdomain-BodyAccelerometerJerkMagnitude-mean" columns for the "ActivityName"/"SubjectID" combination.
64. **freqdomain-BodyAccelerometerJerkMagnitude-stdev** - Numeric, Average of all "freqdomain-BodyAccelerometerJerkMagnitude-stdev" columns for the "ActivityName"/"SubjectID" combination.
65. **freqdomain-BodyGyroMagnitude-mean** - Numeric, Average of all "freqdomain-BodyGyroMagnitude-mean" columns for the "ActivityName"/"SubjectID" combination.
66. **freqdomain-BodyGyroMagnitude-stdev** - Numeric, Average of all "freqdomain-BodyGyroMagnitude-stdev" columns for the "ActivityName"/"SubjectID" combination.
67. **freqdomain-BodyGyroJerkMagnitude-mean** - Numeric, Average of all "freqdomain-BodyGyroJerkMagnitude-mean" columns for the "ActivityName"/"SubjectID" combination.
68. **freqdomain-BodyGyroJerkMagnitude-stdev** - Numeric, Average of all "freqdomain-BodyGyroJerkMagnitude-stdev" columns for the "ActivityName"/"SubjectID" combination.


Transformations
---------------
1. **Merge of the Observation Data** - As the Observation information was partitioned into two files, "Train" and "Test", the data was merged into one data frame.  **IMPORTANT** - Order of merge is "Train" first then "Test". 
2. **Filtering of Features (Measurements)** - The assignment asked that we only include features related to "mean and standard deviation".  I opted to choose features that contained the specific terms "mean()" and "std()".  There were other features with names that contained some form of "mean" (namely "meanFreq" and "angle(...Mean)") that I chose to omit.  These elements can be re-introduced with minimal effort.
3. **Merge of Activity Data** - As the Activity information was partitioned into two files, "Train" and "Test", the data was merged into one data frame.  **IMPORTANT** - Order of merge is "Train" first then "Test".
4. **Provide Detailed Activity Names** - The Activity information consists of the integers 1 thru 6.  These values were mapped to the following more formal Activity Names
  * 1 = "Walking"
  * 2 = "Walking (Upstairs)"
  * 3 = "Walking (Downstairs)"
  * 4 = "Sitting"
  * 5 = "Standing"
  * 6 = "Laying"
5. **Merge of Subject Data** - As the Subject information was partitioned into two files, "Train" and "Test", the data was merged into one data frame.  **IMPORTANT** - Order of merge is "Train" first then "Test".
6. **Prepend Activity Names and Subject ID to Filtered Observation Data** - The Activity Name and Subject ID's were added to the data set (Activity Name first, then Subject ID followed by the measurements).
7. **Apply Descriptive Column Names** - Friendly Columns were added to the data.
8. **Aggregate (average) information by Activity Name and Subject ID categories** - Each measurement field was averaged based on the Activity Name and Subject ID combination.

