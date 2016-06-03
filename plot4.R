# plot4.R

png("plot4.png", width = 480, height = 480)

# setup for a 2X2 plot
par(mfcol = c(2, 2))

#plot (1,1) DateandTime vs globalactivepower
plot(DateandTime, globalactivepower, type= "l", ylab = "Global Active Power (kilowatts)", xlab = "")

#plot (2,1) DateandTime vs Submetering
#plot DateandTime vs Submetering_1
plot(DateandTime, subsetdata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
# Annotate the line plot DateandTime vs Submetering_2 in red
lines(DateandTime, subsetdata$Sub_metering_2, type = "l", col = "red")
# Annotate the line plot DateandTime vs Submetering_2 in blue
lines(DateandTime, subsetdata$Sub_metering_3, type = "l", col = "blue")
# Annotate the legend
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# plot (1, 2) DateTime vs Voltage
Voltage <- as.numeric(subsetdata$Voltage)
plot(DateandTime, Voltage, type= "l", ylab = "Voltage", xlab = "datetime")

# plot (2, 2) DateTime vs Global_Reactive_power
globalreactivepower <- as.numeric(subsetdata$Global_reactive_power)
plot(DateandTime, globalreactivepower, type= "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
