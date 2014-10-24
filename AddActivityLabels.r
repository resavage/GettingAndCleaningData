AddActivityLabels <- function(inData) {
    ### AddActivityLabels(data frame) - Returns a new data frame based on 
    ### the contents of the passed data frame.
    ###
    ### Parameters:
    ###  - inData - Source data frame.  I opted not to alter the passed
    ###    data frame, instead creating and altering a new data frame.
    ###
    ### Returns:
    ###  - data frame containing the updated information.
    ###
    
    # Build the Activity Description Data Frame
    activityID <- c(1:6)
    activityDesc <- c("Walking", 
                      "Walking (Upstairs)",
                      "Walking (Downstairs)",
                      "Sitting",
                      "Standing",
                      "Laying")
    actdesc = data.frame(activityID, activityDesc, stringsAsFactors=FALSE)
    colnames(actdesc) <- c("id", "desc")
    
    # Make copy of the input to work on 
    resp <- data.frame(inData)
    resp$desc <- ""

    # Update the Label Rows with the Description
    for (i in 1:nrow(actdesc)) {
        resp[resp$id == actdesc$id[i],]$desc <- actdesc$desc[i]
    }
    
    return(resp)
}