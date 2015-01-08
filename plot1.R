source("getElectricityData.R")

electricityData <- getElectricityData("household_power_consumption.txt")

Sys.setlocale("LC_TIME", "English")

png("plot1.png")

with(electricityData, 
     hist(Global_active_power,
          col = "red",
          main = "Global Active Power",
          xlab = "Global Active Power (kilowatts)",
          ylab = "Frequency"))

dev.off()
