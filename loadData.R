#Download data if not available yet.
if(!file.exists("consumption.zip")){
  fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileUrl, destfile = "consumption.zip", method = "curl")
  unzip("consumption.zip")
}

#Read data to table
data<-read.table("household_power_consumption.txt", sep = ";", skip = 1, stringsAsFactors = FALSE, na.strings = c("?"))
colnames(data)<-c("Date","Time","Global_active_power","Global_reactive_power",
                  "Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#Convert Date and Time columns to standard R objects.
data$Date<-as.Date(data$Date, format="%d/%m/%Y")
data$Time<-strptime(data$Time,format="%H:%M:%S")
