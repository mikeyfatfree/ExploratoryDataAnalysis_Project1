
plot2.run <- function(power) {
  plot2.plot(power)
  writeFile("plot2.png")
}

plot2.plot <- function(power) {
  plot(power$datetime,power$Global_active_power, type="n",ylab="Global Active Power (kilowatts)",xlab="")
  lines(power$datetime,power$Global_active_power)
}
