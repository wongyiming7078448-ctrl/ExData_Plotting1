png("plot3.png", width = 800, height = 600)

with(power_consumption_real, plot(datetime, Sub_metering_1, 
                                  type = "l",
                                  ylab = 'Energy sub metering',
                                  xlab = '',
                                  xaxt = 'n'))
with(power_consumption_real, points(datetime, Sub_metering_2,
                                    type = 'l',
                                    col = 'red'))
with(power_consumption_real, points(datetime, Sub_metering_3,
                                    type = 'l',
                                    col = 'blue'))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

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