LoadData <- function(file) {
    ## LoadData(file) - Loads the requested file into a data frame
    ## and then returns the data frame
    ##
    ## Parameters:
    ##  - file - Name of file to be loaded
    ##
    ## Returns:
    ##  - data frame containing the data from the file
    ##
    
    resp <- read.table(file, sep = "")
    
    return(resp)
}