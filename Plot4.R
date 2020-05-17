data <- read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

library(lubridate)
library(tidyverse)

my_data <- subset(data, data$Date == "1/2/2007" | data$Date == 2/2/2007")

par(mfrow = c(2,2))
with(my_data, plot(Global_active_power, ylab = "Global Active Power (kilowatts)", type = "l")
                  plot(x = my_data$dates_subset, y = my_data$Voltage, xlab = "datetime", ylab = "Voltage, type = "l")
plot(x = my_data$Date, y = my_data$Sub_metering_1, ylab = "Energy sub metering", type = "l", col = "black")
abline(my_data$Sub_metering_2, type = "l", col = "red")
abline(mydata$Sub_metering_2, type = "l", col = "blue")
plot(x = mydata$dates_subset, y = mydata$Global_reactive_power, xlab = "datetime", 
     ylab = "Global_reactive_power", type = "l")
