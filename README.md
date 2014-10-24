Getting And Cleaning Data
=========================
Course Project for the "Getting And Cleaning Data" class.


Repo Contents
-------------
* **AddActivityLabels.r** - Prepares a data frame that will be used to formally describe the Activities. 
* **CodeBook.md** - Describes the submitted "tidy data", including the source data, variables and transformations.
* **GetRelevantFeatures.r**	- Determines the measurements to be included in the "tidy data"
* **LoadData.r** - Helper function to load files into a data frame.
* **NameDataColumns.r**	- Helper function to add column names to a data frame.
* **README.md** - This file
* **run_analysis.r** - Main module.  Responsible for generating the "tidy data".


Setup
-----
Other than the normal **R** and **R Studio** setup, there are no specific Packages that need to be installed or loaded.  Per the project instructions, the following files should be copied to the "Working Directory":

* **subject_test.txt** - Test Subject/Observation mapping.
* **subject_train.txt** - Training Subject/Observation mapping.
* **X_test.txt** - Test observations.
* **X_train.txt** - Training observations.
* **y_test.txt** - Test Activity/Observation mapping.
* **y_train.txt** - Training Activity/Observation mapping.

Additionally, the following field should be copied to the "Working Directory" to assist with the measurement selection:

* **features.txt** - List of features (measurement names).


Functions
---------
`run_analysis()`  
**Description:** Main module which will load all relevant sources, set constants, perform the clean-up process and generates the "tidy data" file.  
**Parameters:** None  
**Returns:** None  

`LoadData(<file>)`  
**Description:** Loads the requested file into a data frame  
**Parameters:**  
- *<file>* - Name of file to be loaded.  
**Returns:** Data frame containing the data from the file.  

`GetRelevantFeatures(<data frame>, <search criteria>)`  
**Description:** Given the supplied Feature data (column index and description), this function will return a data frame containing the index and description of any feature that has a description that contains the search string.  **NOTE** - The filter will be looking for "exact" matches of the search criteria.  
**Parameters:**  
- *<data frame>* - Feature Data to be searched.  
- *<search criteria>* - List of search criteria (terms).  
**Returns:** Data frame containing the relevant (filtered) features.  

`AddActivityLabels(<data frame>)`  
**Description:** Returns a new data frame based on the contents of the passed data frame.  The new data frame will include a descriptive Activity name.  
**Parameters:**  
- *<data frame>* - Activity mapping data frame.  
**Returns:** Data frame containing the updated information.

`NameDataColumns(<data frame>)`  
**Description:** Sets the column names of the supplied data frame.  Any changes to the column filtering 
logic will likely require changes in this function.  
**Parameters:**  
- *<data frame>* - Input data frame.  
**Returns:** None  


Process
-------
1. **Load and merge data items** - Accomplished using the `LoadData()` and `rbind()` functions.
2. **Filter to retrieve only the mean and standard deviation columns** - Accomplished by loading the "features.txt" file into a data set then using the `GetRelevantFeatures()` function to identify the columns to select. **IMPORTANT** - The assignment was unclear as to the "mean and standard deviation" measurements, especially the various "mean()", "meanFreq" and "angle(...Mean)" measurements.  I chose to specifically look for "mean()" and "std()".  Changes to this logic can easily be made by altering the `searchCrit` list to include the **exact text** to search for (and, of course, the output column labeling).
3. **Load and prepend Activity and Subject information** - Accomplished by performing the following steps:
  * Load and combine the Activity Labels.
  * Identify Activities by Formal names by using the `AddActivityLabels()` function.
  * Load and combine the Subject data.
  * Prepend the Activity names and Subject data to the measurement data using `cbind()`.
4. **Apply formal column names to the data frame** - Accomplished by using the `NameDataColumns()` function.
5. **Aggregate the data and create the output file** - Accomplished by performing the following steps:
  * Using the `aggregate()` function, create a new data frame containing each measurement's mean for each "Activity Name" and "Subject ID" combination.
  * Apply formal column names to the data frame by using the `NameDataColumns()` function.
  * Create the output file by using the `write.table()` function.