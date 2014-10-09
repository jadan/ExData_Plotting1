#Load data
if(!dataLoaded){
  source("loadData.R")
}

#Open png device and set up dimensions.
png(filename="./figure/plot3.png", width=480, height=480)

#Plot and annotate graph.
plot(daysSubset$Time, daysSubset$Sub_metering_1, type = "l", 
     ylab = "Energy sub metering", xlab="")
lines(daysSubset$Time, daysSubset$Sub_metering_2, type = "l", col = "red")
lines(daysSubset$Time, daysSubset$Sub_metering_3, type = "l", col = "blue")
legend("topright", 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c(1,1,1))

#Close png device.
dev.off()
