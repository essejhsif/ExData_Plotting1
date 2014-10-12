## Plot 4 ##
# Set the active working directory
# Load and open the household_power_consumption.txt file
setwd("/Users/jessefish/Desktop/Coursera")
data <- read.csv("household_power_consumption.txt",
                 sep=";",
                 colClasses=c(rep("character",2),rep("numeric",7)),
                 na.strings="?")

# Consolidate the date and time columns into one timestamp and remove rest
data$Timestamp <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
data$Date=NULL
data$Time=NULL

# Look at subset data; dates from 2007-02-01 - 2007-02-02.
subData= subset(data,as.Date(data$Timestamp) >= "2007-02-01" & as.Date(data$Timestamp) < "2007-02-03")

#png plot with 2x2 layout
png(filename="plot4.png", height=480, width=480, bg="transparent")
par(mfrow=c(2,2))

#First plot
plot(subData$Timestamp, sub_data$Global_active_power, type="l", xlab="", ylab="Global Active Power")

#Second plot
plot(subData$Timestamp, subData$Voltage, type="l", xlab="datetime", ylab="Voltage")

#Third plot - lines, legend
plot(subData$Timestamp, subData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(subData$Timestamp, subData$Sub_metering_2, type="l", col="red")
lines(subData$Timestamp, subData$Sub_metering_3, type="l", col="blue")
legend(x="topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1),lwd=2,col=c("black","red","blue"),bty="n")

#Fourth plot
plot(subData$Timestamp, subData$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()