data <- read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

library(lubridate)
library(tidyverse)

my_data <- subset(data, data$Date == "1/2/2007" | data$Date == 2/2/2007")

with(my_data, plot(Global_active_power, 
ylab = "Global Active Power (kilowatts)", type = "l")         