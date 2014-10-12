## Plot 1 ##
# Set the active working directory
# Load and open the household_power_consumption.txt file
setwd("/Users/jessefish/Desktop/Coursera")
file<-file("household_power_consumption.txt")
open(file)

# Read relevant data from file, then close 
data <- read.table(file, skip=66637, sep=";", nrow=69518-66638) 
close(file)

# Png histogram file (of 480x480) plotted with relevant data from file, correct axes names, 
#correct title and axes names. 'Global Active Power' was in 3rd column. Columns are red.
png("plot1.png", width = 480, height = 480) 
(p <- hist(data[,3], plot = FALSE))
plot(p, freq=TRUE, col='red', ylab = "Frequency", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

# Plot the histogram
(p <- hist(data[,3], plot = FALSE))
plot(p, freq=TRUE, col='red', ylab = "Frequency", main = "Global Active Power", xlab="Global Active Power (kilowatts)")