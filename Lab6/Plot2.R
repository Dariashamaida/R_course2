#### code for 2nd graph
png("plot2.png", width=480, height=480)
plot(data_sample$DateTime,data_sample$Global_active_power, ylab="Global Active Power (kilowatts)", 
     xlab="", type="l")
dev.off()
