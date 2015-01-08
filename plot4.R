source("getElectricityData.R")

electricityData <- getElectricityData("household_power_consumption.txt")

Sys.setlocale("LC_TIME", "English")

png("plot4.png")

par(mfrow=c(2,2))
with(electricityData, 
     plot(DateTime, Global_active_power, type ="n",
          main = "", xlab = "", 
          ylab = "Global Active Power"))
with(electricityData, lines(DateTime, Global_active_power))
with(electricityData, 
     plot(DateTime, Voltage, type ="n",
          main = "", xlab = "", 
          ylab = "Global Active Power"))
with(electricityData, lines(DateTime, Voltage))
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
with(electricityData, 
     plot(DateTime, Global_reactive_power, type ="n",
          main = "", xlab = "", 
          ylab = "Global Reactive Power"))
with(electricityData, lines(DateTime, Global_reactive_power))

dev.off()
