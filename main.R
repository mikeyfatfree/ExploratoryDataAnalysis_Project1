

source("data.R")
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

dataDir <- getwd()

power <- readFile(dataDir)

plot1.run(power)
plot2.run(power)
plot3.run(power)
plot4.run(power)
