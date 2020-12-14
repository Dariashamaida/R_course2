#### code for 4th graph
  par(mfrow = c(2, 2))
#### 4.1  
  plot(data_sample$DateTime, data_sample$Global_active_power, type = "l", xlab = "",  ylab = "Global Active Power")
#### 4.2  
  plot(data_sample$DateTime, data_sample$Voltage, type = "l", xlab = "datetime",  ylab = "voltage")
#### 4.3  
  plot(data_sample$DateTime, data_sample$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(data_sample$DateTime, data_sample$Sub_metering_2, type = "l", col = "red")
  lines(data_sample$DateTime, data_sample$Sub_metering_3, type = "l", col = "blue")
  legend("topright", lty = c(1, 1, 1), col = c("black", "red", "blue"),  legend = c("Sub_metering_1 ", "Sub_metering_2 ", "Sub_metering_3 "), bty = "n")
#### 4.4  
  plot(data_sample$DateTime, data_sample$Global_reactive_power, type = "l",  xlab = "datetime",   ylab = "Global_reactive_power")
  dev.off()
