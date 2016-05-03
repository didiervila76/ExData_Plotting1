
## Loading the data
power_D <- read.csv("C:/HardDisk/Coursera/explotary Analysis/household_power_consumption.txt", header=T, sep=';',  
                    nrows=2075259)

## Change the format  for the initial
power_D$Date <- as.Date(power_D$Date, format="%d/%m/%Y") 

## Check the data 
View(power_D)

## Restriction of the data using the new format

Date_Intervall <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
power_Final <- subset(power_D, Date %in% Date_Intervall)



## Concatenate date and time
datetime <- paste(as.Date(power_Final$Date), power_Final$Time) 
## Add a new  column to the original data after the conversion
power_Final$Datetime <- as.POSIXct(datetime) 

 
