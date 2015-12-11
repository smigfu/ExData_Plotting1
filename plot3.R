#
# Read in data
# 
if (!exists("consumption"))
  source("read_data.R")

#
# Plot #3 (multi lines)
#
png(filename = "plot3.png", width = 480, height = 480)
plot(x = range(consumption$DateTime), y = c(min(consumption$Sub_metering_1,consumption$Sub_metering_2,consumption$Sub_metering_3), max(consumption$Sub_metering_1,consumption$Sub_metering_2,consumption$Sub_metering_3)), type = "n", ylab = "Engery Sub Metering", xlab = "")
lines(x = consumption$DateTime, y = consumption$Sub_metering_1, type = "l", col = "black")
lines(x = consumption$DateTime, y = consumption$Sub_metering_2, type = "l", col = "red")
lines(x = consumption$DateTime, y = consumption$Sub_metering_3, type = "l", col = "blue")
legend(x = "topright", legend = c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"), lty = 1, col = c("black", "red", "blue"))
dev.off()