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
plot(myX,as.numeric(as.character(NeedData$Global_active_power)),xlab="",ylab = "Global Active Power(kilowatts)",type = "l")
dev.copy(png,file="plot2.png")
dev.off()