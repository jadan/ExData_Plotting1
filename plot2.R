#Load data
if(!dataLoaded){
  source("loadData.R")
}

#Open png device and set up dimensions.
png(filename="./figure/plot2.png", width=480, height=480)

#Plot and annotate graph.
plot(daysSubset$Time, daysSubset$Global_active_power, 
     type="l", 
     xlab="", 
     ylab="Global Active Power (kilowatts)")

#Close png device.
dev.off()
