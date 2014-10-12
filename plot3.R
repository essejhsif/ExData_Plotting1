## Plot 3 ##
# Set the active working directory
# Load and open the household_power_consumption.txt file
setwd("/Users/jessefish/Desktop/Coursera")
file<-file("household_power_consumption.txt")
open(myFile)

# Read relevant data from file, then close 
data <- read.table(file, skip=66637, sep=";", nrow=69518-66638) 
close(myFile)

# Png multiple time series file (480x480) plotted with relevant data from file with correct axis names
# including the appropriate days of the week ('Thurs,' 'Fri', 'Sat') for x axis and coloring
# for lines
png("plot3.png", width = 480, height = 480) 
plot(data[,7], type="l", xaxt = "n", xlab = "", ylab="Energy sub metering")
lines(data[,8], col="red", type="l", xaxt = "n", xlab = "")
lines(data[,9], col="blue", type="l", xaxt = "n", xlab = "")

# Include the legend as well
legend("topright", lwd=3, col=c("black", "red", "blue"), cex= 0.9, c("Sub_metering1", "Sub_metering2", "Sub_metering3"))
axis(1, at=c(1, length(data[,1])/2,length(data[,1])), labels = c("Thu", "Fri", "Sat"))
dev.off()

# Plot the time (multiple) time series
plot(data[,7], type="l", xaxt = "n", xlab = "", ylab="Energy sub metering")
lines(data[,8], col="red", type="l", xaxt = "n", xlab = "")
lines(data[,9], col="blue", type="l", xaxt = "n", xlab = "")

## Plot the legend / axis
legend("topright", lwd=3, col=c("black", "red", "blue"), cex= 0.9, c("Sub_metering1", "Sub_metering2", "Sub_metering3"))
axis(1, at=c(1, length(data[,1])/2,length(data[,1])), labels = c("Thu", "Fri", "Sat"))