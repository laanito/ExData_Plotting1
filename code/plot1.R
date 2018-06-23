# Read data
data <- read.table("data/household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)
# Set date format
data[,"Date"] <- as.Date(data[,"Date"],format = "%d/%m/%Y")
# Filter data
sdata<-subset(data,Date == "2007-02-01" | Date == "2007-02-02")
# Convert string to numeric format
GlobActPow<-suppressWarnings(as.numeric(sdata[,"Global_active_power"]))
# Make and save plot
png("plots/plot1.png",width = 480, height = 480)
hist(GlobActPow, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()