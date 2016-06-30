#Read All Data
SourceFile <- "household_power_consumption.txt"
AllData <- read.table(SourceFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subset the data for relevant months
SubData <- AllData[AllData$Date %in% c("1/2/2007","2/2/2007") ,]

#Create histogram from subet of data
globalActivePower <- as.numeric(SubData$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
