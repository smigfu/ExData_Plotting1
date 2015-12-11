#
# Read in data
# 
if (!exists("consumption"))
  source("read_data.R")

#
# Plot #1 (histogram)
#
png(filename = "plot1.png", width = 480, height = 480)
hist(x = consumption$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()