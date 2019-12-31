df<-read.table("household_power_consumption.txt", sep=";",skip=grep("1/2/2007",readLines("household_power_consumption.txt")),nrows=2879,header=FALSE)
colnames(df) <- read.table("household_power_consumption.txt", nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)

png("plot1.png", width=480, height=480)
hist(df$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()