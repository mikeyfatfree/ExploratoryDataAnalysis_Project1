
## Introduction

Builds/writes 4 separate plots based on the household power consumption data


## Data set
https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

## Synopsis

* source("main.R")

the code assumes that your current working directory has all the R code.
in main.R, you can set a separate data directory.  If you modify
anything, it assumes that the data is in your working directory.
This build and writes all plots to current working directory

## Files

* main.R - runs everything
* data.R - utility functions for reading the dataset and writing png files
* plot1.R - plots and writes png file for plot1
* plot2.R - plots and writes png file for plot2
* plot3.R - plots and writes png file for plot3
* plot4.R - plots and writes png file for plot4

## Issues

in plot 3, I modified the right margin to fix the legend which looks good
on screen; however, when we save it to the png file, it reverts