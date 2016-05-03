
setwd("C:/HardDisk/Coursera/explotary Analysis")

source(loading_Data.R)

## construction of the histogram
plot(as.numeric(power_Final$Global_active_power )~power_Final$Datetime, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)") 

## copy of the plot 
dev.copy(png, file="plot2.png", height=480, width=480) 
dev.off()
