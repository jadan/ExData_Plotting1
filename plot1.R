png(filename="./figure/plot1.png", width=480, height=480)
with(
  subset(data, Date == "2007-02-01" | Date == "2007-02-02"), 
  hist(Global_active_power, 
       col="red", 
       main="Global Active Power", 
       xlab = "Global Active Power (kilowatts)"))
dev.off()