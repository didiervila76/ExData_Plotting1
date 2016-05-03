
setwd("C:/HardDisk/Coursera/explotary Analysis")

source(loading_Data.R)




plot(as.numeric(power_Final$Sub_metering_1)~power_Final$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="") 
lines(as.numeric(power_Final$Sub_metering_2)~power_Final$Datetime,col='Red') 
lines(as.numeric(power_Final$Sub_metering_3)~power_Final$Datetime,col='Blue') 

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2,  
legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")) 


## Copy
dev.copy(png, file="plot3.png", height=480, width=480) 
dev.off() 
