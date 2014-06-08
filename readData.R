# Coursera, EDA. June 2014.
# Project directory:
# .../Coursera/Data Science/EDA/project 1 - plotting
# Reading & plotting the data.
# Part of Rproject "project 1 - plotting"

library(data.table)

filename <- "household_power_consumption.txt"
list_of_dates <- c('1/2/2007','2/2/2007')

dt <- suppressWarnings(fread(filename, header=TRUE, na.strings="?", sep=";",
            stringsAsFactors=F)[Date %in% list_of_dates])
df <- as.data.frame(dt) # convert from data table to data frame
df[,3:9] <- lapply(df[,3:9],as.numeric)

time <- strptime(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")
