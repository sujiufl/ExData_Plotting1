# plot2.R 
# see Week1Assignment.R to see how the data was downloaded and Read

# create a new column called DateandTime combining time and date
subsetdata$DateandTime <- paste(subsetdata$Date, subsetdata$Time)
head(subsetdata)
globalactivepower <- as.numeric(subsetdata$Global_active_power)
DateandTime <- strptime(subsetdata$DateandTime, "%d/%m/%Y %H:%M:%S")

png("plot2.png", width = 480, height = 480)
plot(DateandTime, globalactivepower, type= "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
