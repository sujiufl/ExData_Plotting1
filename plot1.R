# Plot1.R 
# See file Week1Assignment.R to see how the data was downloaded and read

# create and plot the relevant plot1.png
png("plot1.png", width = 480, height = 480)
hist(as.numeric(subsetdata$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
