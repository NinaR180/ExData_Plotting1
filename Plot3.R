data <- read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

library(lubridate)
library(tidyverse)

my_data <- subset(data, data$Date == "1/2/2007" | data$Date == 2/2/2007")

plot(x = my_data$Date, y = my_data$Sub_metering_1, ylab = "Energy sub metering", type = "l", col = "black")
abline(my_data$Sub_metering_2, type = "l", col = "red")
abline(mydata$Sub_metering_2, type = "l", col = "blue")