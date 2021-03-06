#Plot2
household_power_consumption <- read.csv("~/Desktop/Coursera/SPECIFICATION_DATA_ANALYSIS/4.ExploratoryData/CourseProjects/Project1/household_power_consumption.txt", header = TRUE, na = "?", sep=";")
hpc <- household_power_consumption
sub.hpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]

globalAP <- as.numeric(sub.hpc$Global_active_power)
datetime <- strptime(paste(sub.hpc$Date, sub.hpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, globalAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()