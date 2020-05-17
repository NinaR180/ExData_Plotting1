data <- read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

library(lubridate)
library(tidyverse)

my_data <- subset(data, data$Date == "1/2/2007" | data$Date == 2/2/2007")

hist(as.numeric(as.character(my_data$Global_active_power)), main = "Global Active Power", 
	xlab = "Global Active Power (kilowatts)", ylab = "frequency", col = "red")

              