#--- data read-in & preparation ---

source("readData.R") # please note that this file is also included in the repo
                     # (as a general rule in programming says: never duplicate code.)

# --- plot & save ----

png("plot1.png")

hist(df$Global_active_power,col="red", main = "Global Active Power",
     xlab="Global Active Power (kilowatts)")

dev.off()
