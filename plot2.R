df<-read.table("household_power_consumption.txt", sep=";",skip=grep("1/2/2007",readLines("household_power_consumption.txt")),nrows=2879,header=FALSE)
colnames(df) <- read.table("household_power_consumption.txt", nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)

df$datetime<-strptime(paste(df$Date,df$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(df$datetime, df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()