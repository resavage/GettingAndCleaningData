GetRelevantFeatures <- function(feature.data, searchCrit) {
    ### GetRelevantFeatures(data frame, search criteria) - Given the 
    ### supplied Feature data (column index and description), this
    ### function will return a data frame containing the index and 
    ### description of any feature that has a description that contains
    ### the search string.  NOTE - The filter will be looking for "exact"
    ### matches of the search criteria.
    ###
    ### Parameters:
    ###  - feature.data - Feature Data to be searched.
    ###  - searchCrit - List of search criteria (terms).
    ###
    ### Returns:
    ###  - Data frame containing the relevant (filtered) features.
    ###
    
    results = c()
    
    # Iterate through the search criteria to find matching items
    for (item in searchCrit) { 
        results <- rbind(results, feature.data[grep(item, feature.data$featureName, fixed = TRUE),])  
    }
    
    # Sort the results in the Index Order
    results <- results[order(results$index), ]
    
    return(results)
}