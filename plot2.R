source("getElectricityData.R")

electricityData <- getElectricityData("household_power_consumption.txt")

Sys.setlocale("LC_TIME", "English")

png("plot2.png")

with(electricityData, 
     plot(DateTime, Global_active_power, type ="n",
          main = "", xlab = "",
          ylab = "Global Active Power (kilowatts)"))
with(electricityData, lines(DateTime, Global_active_power))

dev.off()
