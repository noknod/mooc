data <- read.csv2('./household_power_consumption.txt', header=TRUE, 
                  colClasses = "character", na.strings = '?')

data$DateTime <- strptime(paste(data[, 1], data[, 2], sep=' '), 
                          '%d/%m/%Y %H:%M:%S', tz='GMT')
date_sub <- data[data$DateTime >= strptime('01/02/2007', '%d/%m/%Y', tz='GMT') 
                 & data$DateTime < strptime('03/02/2007', '%d/%m/%Y', tz='GMT'), ]

lct <- Sys.getlocale("LC_TIME"); Sys.setlocale("LC_TIME", "C")


png('./plot3.png', width=480, height=480)

plot(date_sub$DateTime, as.numeric(date_sub$Sub_metering_1), type='l', 
     main='', ylab='', xlab='')
lines(date_sub$DateTime, as.numeric(date_sub$Sub_metering_2), col='red')
lines(date_sub$DateTime, as.numeric(date_sub$Sub_metering_3), col='blue')

title(ylab='Energy sub metering')

legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       lty=1, col=c('black', 'red', 'blue'))

dev.off()


Sys.setlocale("LC_TIME", lct)