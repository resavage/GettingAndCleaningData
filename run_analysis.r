run_analysis <- function() {
    # Load Sources
    source('./LoadData.r')
    source('./GetRelevantFeatures.r')
    source('./AddActivityLabels.r')
    source('./NameDataColumns.r')
    
    # Set Constants
    trainDataFile <- "X_train.txt"
    testDataFile <- "X_test.txt"
    trainSubjectFile <- "subject_train.txt"
    testSubjectFile <- "subject_test.txt"
    trainLabelFile <- "y_train.txt"
    testLabelFile <- "y_test.txt"
    features <- "features.txt"
    searchCrit <- c("mean()", "std()")

    
    ###----------------------------------
    ### Step 1 - Load & Merge Data Tables.  
    ###----------------------------------
    train.data <- LoadData(trainDataFile)
    test.data <- LoadData(testDataFile)
    all.data <- rbind(train.data, test.data)
    
    # Cleanup unneeded tables
    remove(train.data)
    remove(test.data)

    
    ###----------------------------------
    ### Step 2 - Filter to retrieve only the mean and standard 
    ### deviation columns. 
    ###----------------------------------
    feature.data <- LoadData(features)
    colnames(feature.data) <- c("index", "featureName")
    feature.filter <- GetRelevantFeatures(feature.data, searchCrit)
    filtered.data <- all.data[, feature.filter$index]   
    
    
    ###----------------------------------
    ### Step 3 - Load Label data, provide descriptive 
    ### activity names and attach it to the data.  Also
    ### attach the SubjectID's to the Data frame
    ###----------------------------------
    # Get Labels
    train.label <- LoadData(trainLabelFile)
    test.label <- LoadData(testLabelFile)
    all.labels <- rbind(train.label, test.label)
    colnames(all.labels) <- c("id")
    
    # Apply Descriptive Labels to the Label data
    all.labels <- AddActivityLabels(all.labels)
    
    # Get The SubjectID Data
    train.subject <-LoadData(trainSubjectFile)
    test.subject <-LoadData(testSubjectFile)
    all.subject <- rbind(train.subject, test.subject)
    
    # Combine the Activity Labels, Subject and the Filtered data
    # (in that order)
    filtered.data <- cbind(all.labels$desc, all.subject, filtered.data)
    
    # cleanup unneeded tables
    remove(train.label)
    remove(test.label)
    remove(train.subject)
    remove(test.subject)
    
    
    ###----------------------------------
    ### Step 4 - Provide descriptive column names for the 
    ### Filtered data.
    ###----------------------------------
    filtered.data <- NameDataColumns(filtered.data)
    
    
    ###----------------------------------
    ### Step 5 - Create new tidy data frame containing
    ### averages for each Activity and Subject.  This
    ### dataframe will be written to a file.
    ###----------------------------------
    # Aggregate the information.
    result = aggregate(filtered.data[,3:ncol(filtered.data)], 
                       by = list(filtered.data$ActivityName, 
                                 filtered.data$SubjectID), 
                       FUN = "mean")
    
    # Clean up the column names by running the NameDataColumns()
    # function on the results.
    result <- NameDataColumns(result)
    
    # Write data to file
    write.table(result, file = "tidydataresults.txt", row.names = FALSE)

    return()
}