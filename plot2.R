#
# Read in data
# 
if (!exists("consumption"))
  source("read_data.R")

#
# Plot #2 (lines)
#
png(filename = "plot2.png", width = 480, height = 480)
plot(x = range(consumption$DateTime), y = range(consumption$Global_active_power), type = "n", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(x = consumption$DateTime, y = consumption$Global_active_power, type = "l")
dev.off()