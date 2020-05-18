data <- read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

library(lubridate)
library(tidyverse)

my_data <- subset(data, data$Date == "1/2/2007" | data$Date == 2/2/2007")

plot(my_data$Sub_metering_1, ylab = "Energy sub metering", type = "l")
with(my_data, lines(as.numeric(as.character(Sub_metering_2)), col = "red"))
with(my_data, lines(as.numeric(as.character(Sub_metering_3)), col = "blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
	col = c("black", "red", "blue"), lty = 1)
