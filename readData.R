# Coursera, EDA. June 2014.
# Project directory:
# .../Coursera/Data Science/EDA/project 1 - plotting
# Reading & plotting the data.
# Part of Rproject "project 1 - plotting"

library(data.table)

filepath <- "household_power_consumption.txt"

#filepath <- "~/household_power_consumption.txt"
# df <- read.table(filepath,sep=";",header=T,na.strings="?",stringsAsFactors=F)

list_of_dates <- c('1/2/2007','2/2/2007')
dt <- suppressWarnings(fread(filepath, header=TRUE, na.strings="?", sep=";",
            stringsAsFactors=F)[Date %in% list_of_dates])
df <- as.data.frame(dt) # convert to data frame
df[,3:9] <- lapply(df[,3:9],as.numeric)

time <- strptime(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")
