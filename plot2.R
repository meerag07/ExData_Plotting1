#loading the data
setwd ("/Users/meeraganesh/Desktop/R Studio/Exploratory Data/W1")
dat <- read.table ("/Users/meeraganesh/Desktop/R\ Studio/Exploratory\ Data/W1/household_power_consumption.txt", header = TRUE, sep= ";", col.names = c("Date", "Time", "Global_Active_Power", "Global Reactive Power", "Voltage", "Global Intensity", "Sub Metering 1", "Sub Metering 2", "Sub Meterign 3"), colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'), na.strings = "?", )

dat$Date <- as.date (dat$Date, "%d/%m/%Y")
dat <- dat[dat$Date == "1/2/2007"| dat$Date == "2/2/2007", ]
datetime <- paste (dat$Date, dat$Time)
dat$Time <- strptime(datetime, format = "%d/%m/%Y %H:%M:%S")
head (dat)

#Plot2

png ("plot2.png", width = 480, height = 480)
plot(dat$Time,dat$Global_Active_Power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = " ")
dev.off ()