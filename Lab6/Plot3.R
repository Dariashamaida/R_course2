#### code for 3rd graph
plot(data_sample$DateTime, data_sample$Sub_metering_1, type = "l", xlab = "",  ylab = "Energy sub metering")
  lines(data_sample$DateTime, data_sample$Sub_metering_2, type = "l", col = "red")
  lines(data_sample$DateTime, data_sample$Sub_metering_3, type = "l", col = "blue")
  legend("topright", lty = c(1, 1, 1), col = c("black", "red", "blue"), legend = c("Sub_metering_1 ", "Sub_metering_2 ", "Sub_metering_3 "))
