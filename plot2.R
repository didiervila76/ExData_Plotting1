# read the header
tableheader <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, nrows = 2)

# read data
data <- read.table("household_power_consumption.txt", sep = ";", header = FALSE, skip = 66637, nrows = 2880)
# colnamnes 
colnames(data) <- names(tableheader)

#format adjustment
data$datetime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

# let s open plot2
png("plot2.png", width = 480, height = 480, res = 72)

#the plot2.png
x <- data$datetime
y <-data$Global_active_power
plot(x,y, type = "l", xlab ="", ylab= "Global Active Power (kilowatts)")
dev.off()
