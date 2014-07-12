#please download data file to work directory
Sys.setlocale("LC_TIME", "English")
dat <- read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt"'),header=F, sep=';')
colnames(dat) <-names(read.table('household_power_consumption.txt', header=TRUE,sep=";",nrows=1))
png(file="plot2.png",width=480, height=480)
dateTime <- strptime( paste(dat$Date,dat$Time), format="%d/%m/%Y %H:%M:%S")
plot(dateTime,dat$Global_active_power,type="l",ylab="Global Active Power(Kilowatts)",xlab="")
dev.off()