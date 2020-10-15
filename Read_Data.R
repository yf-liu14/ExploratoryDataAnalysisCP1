# loading the data
raw_data <- read.table("./household_power_consumption.txt",
                       sep = ";", header = TRUE, na.strings = "?")
extracted_data <- subset(raw_data, (Date == "1/2/2007") | (Date == "2/2/2007"))
rm("raw_data")

# deal with date and time
library(lubridate)
extracted_data$Time <- dmy_hms(paste(extracted_data$Date, extracted_data$Time, 
                                     sep = " "))
extracted_data$Date <- dmy(extracted_data$Date)
