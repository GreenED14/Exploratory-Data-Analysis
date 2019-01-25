#IMPORTANT:PLEASE READ

In order for the whole set of codes to show output as expected, either:
1. Run in order 'plot1.R,plot2.R,plot3.R,plot4.R'

OR
2. Individually uncomment the first 3 Lines in only the first code that is launched. This will download the data.

Note: The R-codes themselves create the .png files. The output .png is also attached in the repository, which can be seen without running the code

#Working of the code
In each of the code, data is downloaded(as per the user's choice) from
https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

read.table() is used to read the text file into R. A subset data is created for only two dates(2007-02-01 and 2007-02-02) which are only used in plots.
ymd_hms() to convert the 'factor'class of Date and Time into POSIXct
RStudioGD() opens up a separate R-Graphics device window.
From here, plot() along with other functions are used to generate the plots.