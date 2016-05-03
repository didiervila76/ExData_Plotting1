## loading the data

setwd("C:/HardDisk/Coursera/explotary Analysis")

source(loading_Data.R)


 

 ## construction of the histogram
hist(as.numeric(power_Final$Global_active_power), main="Global Active Power",  xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red") 



 ## copy of the plot
 dev.copy(png, file="plot1.png", height=480, width=480) 
 dev.off()