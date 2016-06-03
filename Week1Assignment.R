## file URL
datafileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

## Create Data File
if(!file.exists("./data")) {dir.create("./data")}

## download data zip file
download.file(datafileUrl, destfile = "./data/electricpowerconsumption.zip", method = "curl")

## unzip data file
unzip("./data/electricpowerconsumption.zip")

## data file
datafile <- "./household_power_consumption.txt" 

#Read Data
data <- read.table(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")
head(data)
tail(data)
dim(data)

# Create Subset data with only dates 1/2/2007 and 2/2/2007
subsetdata <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
head(subsetdata)
tail(subsetdata)
dim(subsetdata)
