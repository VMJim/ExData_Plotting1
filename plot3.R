#--- data read-in & preparation ---

source("readData.R") # please note that this file is also included in the repo

# --- plot & save ----

png("plot3.png")

plot(time,df$Sub_metering_1,type="l",col='black',xlab="",ylab="Energy sub metering")
lines(time,df$Sub_metering_2,type="l",col='red')
lines(time,df$Sub_metering_3,type="l",col='blue')
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1,lwd=1,col=c("black","red","blue"),ncol=1,cex=0.8, 
       bty="1", inset =c(0,0), text.col=c("black"))

dev.off()
