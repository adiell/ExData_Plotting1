source("getElectricityData.R")

electricityData <- getElectricityData("household_power_consumption.txt")

Sys.setlocale("LC_TIME", "English")

png("plot3.png")

with(electricityData, 
     plot(DateTime, Sub_metering_1, type ="n",
          main = "",
          ylab = "Energy sub metering",
          xlab = ""))
with(electricityData, lines(DateTime, Sub_metering_1))
with(electricityData, lines(DateTime, Sub_metering_2, col= "red"))
with(electricityData, lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lwd = 1)

dev.off()
