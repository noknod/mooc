data <- read.csv2('./household_power_consumption.txt', header=TRUE, 
                  colClasses = "character", na.strings = '?')

data$DateTime <- strptime(paste(data[, 1], data[, 2], sep=' '), 
                          '%d/%m/%Y %H:%M:%S', tz='GMT')
date_sub <- data[data$DateTime >= strptime('01/02/2007', '%d/%m/%Y', tz='GMT') 
    & data$DateTime < strptime('03/02/2007', '%d/%m/%Y', tz='GMT'), ]


png('./plot1.png', width=480, height=480)

hist(as.numeric(date_sub$Global_active_power), col='red', 
     xlab='Global Active Power (killowats)', main='Global Active Power')

dev.off()