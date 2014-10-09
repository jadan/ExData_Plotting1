#Load data
if(!dataLoaded){
  source("loadData.R")
}

#Open png device and set up dimensions.
png(filename="./figure/plot4.png", width=480, height=480)

#Plot and annotate graph.
par(mfrow=c(2,2))
#Plot 1.
plot(daysSubset$Time, daysSubset$Global_active_power, 
     type="l", 
     xlab="", 
     ylab="Global Active Power (kilowatts)")
#Plot 2
plot(daysSubset$Time, daysSubset$Voltage, 
     type="l", 
     xlab="datetime", 
     ylab="Voltage")
#Plot 3
plot(daysSubset$Time, daysSubset$Sub_metering_1, type = "l", 
     ylab = "Energy sub metering", xlab="")
lines(daysSubset$Time, daysSubset$Sub_metering_2, type = "l", col = "red")
lines(daysSubset$Time, daysSubset$Sub_metering_3, type = "l", col = "blue")
legend("topright", 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c(1,1,1), bty = "n")
#Plot 4
plot(daysSubset$Time, daysSubset$Global_reactive_power, 
     type="l", 
     xlab="datetime", 
     ylab="Global_reactive_power")

#Close png device.
dev.off()