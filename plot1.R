#please download data file to work directory
dat <- read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt"'),header=F, sep=';')
colnames(dat) <-names(read.table('household_power_consumption.txt', header=TRUE,sep=";",nrows=1))
png(file="plot1.png",width=480, height=480)
hist(dat$Global_active_power, col="red", xlab="Global Active Power(Kilowatts)",main="Global Active Power")
dev.off()