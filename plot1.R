SourceFile <- "household_power_consumption.txt"
AllData <- read.table(SourceFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
SubData <- AllData[AllData$Date %in% c("1/2/2007","2/2/2007") ,]

#str(SubData)
globalActivePower <- as.numeric(SubData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
