
setwd("C:/HardDisk/Coursera/explotary Analysis")

source(loading_Data.R)


par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0)) 

plot(as.numeric(power_Final$Global_active_power)~power_Final$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="") 
plot(as.numeric(power_Final$Voltage)~power_Final$Datetime, type="l",   ylab="Voltage (volt)", xlab="") 
plot(as.numeric(power_Final$Sub_metering_1)~power_Final$Datetime, type="l",  ylab="Global Active Power (kilowatts)", xlab="") 
lines(as.numeric(power_Final$Sub_metering_2)~power_Final$Datetime,col='Red') 
lines(as.numeric(power_Final$Sub_metering_3)~power_Final$Datetime,col='Blue') 

legend("topright", col=c("black", "red", "blue"),  lty=1,lwd=2, bty="n", 
legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")) 
plot(as.numeric(power_Final$Global_reactive_power)~power_Final$Datetime, type="l", ylab="Global Rective Power (kilowatts)",xlab="") 
 


 ## Saving to file 
 dev.copy(png, file="plot4.png", height=480, width=480) 
 dev.off() 

