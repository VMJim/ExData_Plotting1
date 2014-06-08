#--- data read-in & preparation ---

source("readData.R") # please note that this file is also included in the repo

# --- plot & save ----
png("plot2.png")

plot(time,df$Global_active_power,type='l',xlab ="", ylab="Global Active Power (kilowatts)")

dev.off()
