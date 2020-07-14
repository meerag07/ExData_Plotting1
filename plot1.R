#loading the data
setwd ("/Users/meeraganesh/Desktop/R Studio/Exploratory Data/W1")
dat <- read.table ("/Users/meeraganesh/Desktop/R\ Studio/Exploratory\ Data/W1/household_power_consumption.txt", header = TRUE, sep= ";", col.names = c("Date", "Time", "Global_Active_Power", "Global Reactive Power", "Voltage", "Global Intensity", "Sub Metering 1", "Sub Metering 2", "Sub Meterign 3"), colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'), na.strings = "?", )

dat$Date <- as.date (dat$Date, "%d/%m/%Y")
dat <= subset (dat, dat$Date >= "2007-02-01" & dat$Date <= "2007-02-02")

dat$Time <- strptime(dat$Time, )


#Plot1
png ("plot1.png", width = 480, height = 480)
hist (dat$Global_Active_Power, main = "Global Active Power", xlab = "Global Active Power", ylab = "Frequency", breaks = 12, col = "red", xlim = range (0:6))
dev.off ()
