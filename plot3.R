


plot3.run <- function(power) {
  plot3.plot(power)
  writeFile("plot3.png")
}

plot3.plot <- function(power) {
  
  ## make right margin a little smaller
  oldMar <- par("mar")
  par(mar = c(5.1, 4.1, 4.1, 2))
  with(power, {
    plot(datetime, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
    lines(datetime,Sub_metering_1)
    lines(datetime,Sub_metering_2,col="red")
    lines(datetime,Sub_metering_3,col="blue")
    legend("topright", legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black','red','blue'), lty=1)
  })
 
   par(mar=oldMar)
}