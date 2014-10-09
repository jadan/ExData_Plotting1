#Load data
if(!dataLoaded){
  source("loadData.R")
}

#Open png device and set up dimensions.
png(filename="./figure/plot1.png", width=480, height=480)

#Plot and annotate graph.
hist(daysSubset$Global_active_power, 
      col="red", 
      main="Global Active Power", 
      xlab = "Global Active Power (kilowatts)")

#Close png device.
dev.off()