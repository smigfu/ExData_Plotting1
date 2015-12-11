#
# Read in data
# 
if (!exists("consumption"))
  source("read_data.R")

#
# Plot #4 (multple plots)
#
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2 ,2))

# top left
plot(x = range(consumption$DateTime), y = range(consumption$Global_active_power), type = "n", ylab = "Global Active Power", xlab = "")
lines(x = consumption$DateTime, y = consumption$Global_active_power, type = "l")

# top right
plot(x = range(consumption$DateTime), y = range(consumption$Voltage), type = "n", ylab = "Volatage", xlab = "datetime")
lines(x = consumption$DateTime, y = consumption$Voltage, type = "l")

# bottom left
plot(x = range(consumption$DateTime), y = c(min(consumption$Sub_metering_1,consumption$Sub_metering_2,consumption$Sub_metering_3), max(consumption$Sub_metering_1,consumption$Sub_metering_2,consumption$Sub_metering_3)), type = "n", ylab = "Engery Sub Metering", xlab = "")
lines(x = consumption$DateTime, y = consumption$Sub_metering_1, type = "l", col = "black")
lines(x = consumption$DateTime, y = consumption$Sub_metering_2, type = "l", col = "red")
lines(x = consumption$DateTime, y = consumption$Sub_metering_3, type = "l", col = "blue")
legend(x = "topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, col = c("black", "red", "blue"), bty = "n")

# bottom right
plot(x = range(consumption$DateTime), y = range(consumption$Global_reactive_power), type = "n", ylab = "Global_reactive_oower", xlab = "datetime")
lines(x = consumption$DateTime, y = consumption$Global_reactive_power, type = "l")

dev.off()