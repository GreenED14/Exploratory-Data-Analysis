# fileurl<-'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
# download.file(fileurl,'Data_to_plot.zip')
# unzip('Data_to_plot.zip')

library(lubridate)
MyData<-read.table("./household_power_consumption.txt",sep = ";",header=TRUE)
MyData$Date<-dmy(MyData$Date)
#Since we want data only on 2007-02-01 and 2007-02-02
NeedData<-rbind(subset(MyData,MyData$Date=="2007-02-01"),subset(MyData,MyData$Date=="2007-02-02"))
RStudioGD()
hist(as.numeric(as.character(NeedData$Global_active_power)),main="Global Active Power",xlab="Global Active Power(kilowatts)",col = "Red")
dev.copy(png,file="plot1.png")
dev.off()