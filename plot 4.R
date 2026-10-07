png("plot4.png", width = 800, height = 600)

par(mfrow = c(2,2))

#Plot 1
plot(power_consumption_real$datetime, power_consumption_real$Global_active_power,
     type = "l",
     ylab = "Global active power",
     xlab = "",
     xaxt = 'n')

axis.POSIXct(
  1,
  at = c(
    as.POSIXct("2007-02-01 00:00:00"),
    as.POSIXct("2007-02-02 00:00:00"),
    as.POSIXct("2007-02-03 00:00:00")
  ),
  labels = c("Thu", "Fri", "Sat")
)

#Plot 2
plot(power_consumption_real$datetime, power_consumption_real$Voltage,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime",
     xaxt = 'n')

axis.POSIXct(
  1,
  at = c(
    as.POSIXct("2007-02-01 00:00:00"),
    as.POSIXct("2007-02-02 00:00:00"),
    as.POSIXct("2007-02-03 00:00:00")
  ),
  labels = c("Thu", "Fri", "Sat")
)


#Plot 3
with(power_consumption_real, plot(datetime, Sub_metering_1, 
                                  type = "l",
                                  ylab = 'Energy sub metering',
                                  xlab = '',
                                  xaxt = 'n'))
with(power_consumption_real, lines(datetime, Sub_metering_2,
                                    col = 'red'))
with(power_consumption_real, lines(datetime, Sub_metering_3,
                                    col = 'blue'))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
      , bty = 'n')

axis.POSIXct(
  1,
  at = c(
    as.POSIXct("2007-02-01 00:00:00"),
    as.POSIXct("2007-02-02 00:00:00"),
    as.POSIXct("2007-02-03 00:00:00")
  ),
  labels = c("Thu", "Fri", "Sat")
)

#Plot 4
plot(power_consumption_real$datetime, power_consumption_real$Global_reactive_power,
     type = "l",
     ylab = "Global_reactive_power",
     xlab = "datetime",
     xaxt = 'n')

axis.POSIXct(
  1,
  at = c(
    as.POSIXct("2007-02-01 00:00:00"),
    as.POSIXct("2007-02-02 00:00:00"),
    as.POSIXct("2007-02-03 00:00:00")
  ),
  labels = c("Thu", "Fri", "Sat")
)

dev.off()