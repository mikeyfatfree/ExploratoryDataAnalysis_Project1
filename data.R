

readFile <- function(dataDir) {

  power <- read.csv(sprintf("%s/household_power_consumption.txt",dataDir),sep=";",stringsAsFactors=FALSE)
  power <- subset(power, power$Date == "2/2/2007" | power$Date == "1/2/2007") ## d/m/yyyy format

  power$datetime <- strptime(paste(power$Date,power$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
  power$Global_active_power <- as.numeric(power$Global_active_power)
  power$Voltage <- as.numeric(power$Voltage)
  power$Sub_metering_1 <- as.numeric(power$Sub_metering_1)
  power$Sub_metering_2 <- as.numeric(power$Sub_metering_2)
  power$Sub_metering_3 <- as.numeric(power$Sub_metering_3)
  
  return(power)
}


writeFile <- function(file="plot.png") {
  dev.copy(png, file=file)  ## by default, this builds a 480x480 image
  dev.off()
}