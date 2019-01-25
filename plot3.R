#NOTE: THE 3 LINES BELOW WILL JUST REPEAT THE DOWNLOADING PROCESS ALREADY DONE IN PLOT 1
# fileurl<-'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
# download.file(fileurl,'Data_to_plot.zip')
# unzip('Data_to_plot.zip')

library(lubridate)
MyData<-read.table("./household_power_consumption.txt",sep = ";",header=TRUE)
MyData$Date<-dmy(MyData$Date)
#Since we want data only on 2007-02-01 and 2007-02-02
NeedData<-rbind(subset(MyData,MyData$Date=="2007-02-01"),subset(MyData,MyData$Date=="2007-02-02"))
myX<-ymd_hms(paste0(NeedData$Date,NeedData$Time))
RStudioGD()
plot(myX,as.numeric(as.character(NeedData$Sub_metering_1)),type="l",xlab = "",ylab = "Energy sub metering")
lines(myX,as.numeric(as.character(NeedData$Sub_metering_2)),type="l",col="red")
lines(myX,as.numeric(as.character(NeedData$Sub_metering_3)),type="l",col="blue")
legend("topright",lty = 1,col = c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,file="plot3.png")
dev.off()