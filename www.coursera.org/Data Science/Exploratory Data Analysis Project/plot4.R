data <- read.csv2('./household_power_consumption.txt', header=TRUE, 
                  colClasses = "character", na.strings = '?')

data$DateTime <- strptime(paste(data[, 1], data[, 2], sep=' '), 
                          '%d/%m/%Y %H:%M:%S', tz='GMT')
date_sub <- data[data$DateTime >= strptime('01/02/2007', '%d/%m/%Y', tz='GMT') 
             & data$DateTime < strptime('03/02/2007', '%d/%m/%Y', tz='GMT'), ]

lct <- Sys.getlocale("LC_TIME"); Sys.setlocale("LC_TIME", "C")


png('./plot4.png', width=480, height=480)

par(mfcol=c(2, 2))

plot(date_sub$DateTime, as.numeric(date_sub$Global_active_power), type='l', 
     main='', ylab='Global Active Power', xlab='')

plot(date_sub$DateTime, as.numeric(date_sub$Sub_metering_1), type='l', 
     main='', ylab='', xlab='')
lines(date_sub$DateTime, as.numeric(date_sub$Sub_metering_2), col='red')
lines(date_sub$DateTime, as.numeric(date_sub$Sub_metering_3), col='blue')
title(ylab='Energy sub metering')
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       lty=1, col=c('black', 'red', 'blue'), bty='n')

plot(date_sub$DateTime, as.numeric(date_sub$Voltage), type='l', 
     main='', ylab='Voltage', xlab='datetime')

plot(date_sub$DateTime, as.numeric(date_sub$Global_reactive_power), type='l', 
     main='', ylab='Global_reactive_power', xlab='datetime')

dev.off()


Sys.setlocale("LC_TIME", lct)