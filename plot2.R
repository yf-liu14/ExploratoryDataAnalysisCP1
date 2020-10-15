# run Read_Data.R first to get the data
source("./Read_Data.R")

# draw a line chart
with(extracted_data, plot(Time, Global_active_power, 
                          type = "l",
                          xlab = "",
                          ylab = "Global Active Power (kelowatts)"))

# copy to a png
dev.copy(png, file = "./plot2.png")
dev.off()