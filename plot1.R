

plot1.run <- function(power) {
  plot1.plot(power) 
  writeFile("plot1.png")
}

plot1.plot <- function(power) {
  hist(power$Global_active_power,xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")
}

