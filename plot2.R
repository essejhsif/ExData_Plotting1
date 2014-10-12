## Plot 2 ##
# Set the active working directory
# Load and open the household_power_consumption.txt file
setwd("/Users/jessefish/Desktop/Coursera")
file<-file("household_power_consumption.txt")
open(file)

# Read data from file, then close 
data <- read.table(file, skip=66637, sep=";", nrow=69518-66638) 
close(file)

# Png timeseries file (of 480x480) plotted with relevant data from file, correct axis names including
# the appropriate days of the week ('Thurs,' 'Fri', 'Sat') for x axis
png("plot2.png", width = 480, height = 480)
plot(data[,3], type="l", xaxt = "n", xlab = "", ylab="Global Active Power (kilowatts)")
axis(1, at=c(1, length(data[,1])/2,length(data[,1])), labels = c("Thu", "Fri", "Sat"))
dev.off()

# Plot the time series / axis
plot(data[,3], type="l", xaxt = "n", xlab = "", ylab="Global Active Power (kilowatts)")
axis(1, at=c(1, length(data[,1])/2,length(data[,1])), labels = c("Thu", "Fri", "Sat"))