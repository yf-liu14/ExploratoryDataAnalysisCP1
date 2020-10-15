# run Read_Data.R first to get the data
source("./Read_Data.R")

# launch a png graphics device
png(filename = "plot3.png")

# create an empty plot
with(extracted_data, plot(Time, Sub_metering_1, 
                          type = "n",
                          xlab = "",
                          ylab = "Energy sub metering"))

# annotation
## create the line of sub_metering_1/2/3
with(extracted_data, {
    points(Time, Sub_metering_1, type = "l", col = "black")
    points(Time, Sub_metering_2, type = "l", col = "red")
    points(Time, Sub_metering_3, type = "l", col = "blue")
})

## create the legend
legend("topright", lty = "solid", lwd = 1, 
       col = c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# close the graphics device
dev.off()