getElectricityData <- function(fileName) {
   library(dplyr)
   fullData <- read.table(fileName, header = TRUE ,sep = ";", 
                          colClasses=c(rep("character",9)))
   relevantDates <- as.Date(c("2007-02-01", "2007-02-02"))
   relevantData <- fullData %>% 
      filter(as.Date(Date, "%d/%m/%Y") %in% relevantDates) 
   rm(fullData)
   relevantData$DateTime <- 
      strptime(paste(relevantData$Date, relevantData$Time), "%d/%m/%Y %H:%M:%S")
   for (colInd in 3:9 ) {
      relevantData[,colInd] <- as.numeric(relevantData[,colInd])
   }
   relevantData
}