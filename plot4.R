
plot4.run <- function(power) {
  plot4.plot(power)
  writeFile("plot4.png")
}

plot4.plot <- function(power) {
  source("plot2.R")
  source("plot3.R")
  par(mfcol = c(2, 2))
  
  plot2.plot(power)
  plot3.plot(power)
  
  with(power, {
    plot(datetime,Voltage, type="n",ylab="Voltage",xlab="datetime")
    lines(datetime,Voltage)
  })
  
  with(power, {
    plot(datetime,Global_reactive_power, type="n",ylab="Global_reactive_power",xlab="datetime")
    lines(datetime,Global_reactive_power)
  })

}