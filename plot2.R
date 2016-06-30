# Import entire data file
SourceFile <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
SourceFile$Date <- as.Date(SourceFile$Date, format="%d/%m/%Y")

# Subsetting the fule dataset
SubData <- subset(SourceFile, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(SourceFile)

#Create Plot2
plot(data$Global_active_power~data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
