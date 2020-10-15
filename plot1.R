# run Read_Data.R first to get the data
source("./Read_Data.R")

# draw a histogram
hist(extracted_data$Global_active_power, 
     col = "red",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     main = "Global Active Power")

# copy to a png
dev.copy(png, file = "./plot1.png")
dev.off()