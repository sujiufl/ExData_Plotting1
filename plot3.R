# plot3.R
# see Week1Assignment.R to see how the data was downloaded and Read

# create and plot the relevant plot3.png
png("plot3.png", width = 480, height = 480)
# plot the DateandTime vs Submetering_1
plot(DateandTime, subsetdata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
# Annotate the line plot DateandTime vs Submetering_2 in red
lines(DateandTime, subsetdata$Sub_metering_2, type = "l", col = "red")
# Annotate the line plot DateandTime vs Submetering_2 in blue
lines(DateandTime, subsetdata$Sub_metering_3, type = "l", col = "blue")
# Annotate the legend
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
