#Plotting histogram of Global Active Power
power_consumption_real[,3:9] <- lapply(power_consumption_real[, 3:9], as.numeric)
str(power_consumption_real)

png("plot1.png", width = 800, height = 600)

hist(power_consumption_real$Global_active_power, col = "red",
     xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency",
     main = "Global Active Power")

dev.off()
