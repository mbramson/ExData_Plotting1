DF <- read.csv("household_power_consumption.txt",sep=";",nrows=2880,skip=66636)
names(DF) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
library("graphics")

hist(DF$Global_active_power, col="red",xlab="Global active power (kilowatts)",main="Global Active Power")