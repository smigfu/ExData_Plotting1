consumption <- read.csv(file = "household_power_consumption.txt", sep = ";", stringsAsFactors = F, na.strings = "?")
consumption$DateTime <- strptime(x = paste(consumption$Date, consumption$Time), format = "%d/%m/%Y %H:%M:%S")
consumption$Date <- NULL
consumption$Time <- NULL
consumption$Global_active_power <- as.double(consumption$Global_active_power)
consumption$Global_reactive_power <- as.double(consumption$Global_reactive_power)
consumption$Voltage <- as.double(consumption$Voltage)
consumption$Global_intensity <- as.double(consumption$Global_intensity)
consumption$Sub_metering_1 <- as.double(consumption$Sub_metering_1)
consumption$Sub_metering_2 <- as.double(consumption$Sub_metering_2)
consumption$Sub_metering_3 <- as.double(consumption$Sub_metering_3)
consumption <- consumption[which(consumption$DateTime >= strptime(x = "2007-02-01 00:00:00", format = "%Y-%m-%d %H:%M:%S") & consumption$DateTime < strptime(x = "2007-02-03 00:00:00", format = "%Y-%m-%d %H:%M:%S")), ]