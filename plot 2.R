power_consumption_real$datetime <- strptime(paste(power_consumption_real$Date, power_consumption_real$Time), format = "%Y-%m-%d %H:%M:%S")

png("plot2.png", width = 800, height = 600)

plot(power_consumption_real$datetime, power_consumption_real$Global_active_power,
     type = "l",
     ylab = "Global active power (kilowatts)",
     xlab = "",
     xaxt = 'n')

axis.POSIXct(
  1,
  at = c(
    as.POSIXct("2007-02-01 00:00:00"),
    as.POSIXct("2007-02-02 00:00:00"),
    as.POSIXct("2007-02-03 00:00:00")
  ),
  labels = c("Thursday", "Friday", "Saturday")
)

dev.off()
