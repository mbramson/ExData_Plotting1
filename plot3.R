DF <- read.csv("household_power_consumption.txt",sep=";",nrows=2880,skip=66636)
names(DF) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
library("graphics")

plot(as.POSIXct(paste(DF$Date, DF$Time), format="%d/%m/%Y %H:%M:%S"),DF$Sub_metering_1,ylab="Energy sub metering",xlab="",type="l")
lines(as.POSIXct(paste(DF$Date, DF$Time), format="%d/%m/%Y %H:%M:%S"),DF$Sub_metering_2, type="l",col="red")
lines(as.POSIXct(paste(DF$Date, DF$Time), format="%d/%m/%Y %H:%M:%S"),DF$Sub_metering_3, type="l",col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_Metering_3"),lty=c(1,1,1),col=c("black","red","blue"),text.width=60000)