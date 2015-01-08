#Plot3
household_power_consumption <- read.csv("~/Desktop/Coursera/SPECIFICATION_DATA_ANALYSIS/4.ExploratoryData/CourseProjects/Project1/household_power_consumption.txt", header = TRUE, na = "?", sep=";")
hpc <- household_power_consumption
sub.hpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(sub.hpc$Date, sub.hpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
subMetering1 <- as.numeric(sub.hpc$Sub_metering_1)
subMetering2 <- as.numeric(sub.hpc$Sub_metering_2)
subMetering3 <- as.numeric(sub.hpc$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2, col=c("black", "red", "blue"))
dev.off()