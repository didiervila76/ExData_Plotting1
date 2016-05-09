# read the header
tableheader <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, nrows = 2)

# read data
data <- read.table("household_power_consumption.txt", sep = ";", header = FALSE, skip = 66637, nrows = 2880)
# colnamnes 
colnames(data) <- names(tableheader)

# format adjustment
data$datetime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

# let s open a png

png("plot1.png", width = 480, height = 480, res = 72)


#graph
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", yaxt = "n", main = "Gloabl Active Power", cex.axis = 0.75)
axis(side = 2, tck = -0.04, cex.axis = 0.75)
dev.off()
