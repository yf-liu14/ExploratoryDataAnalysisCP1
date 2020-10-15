# run Read_Data.R first to get the data
source("./Read_Data.R")

# launch a png graphics device
png(filename = "plot4.png")

# set mfrow
par(mfrow = c(2,2))

# draw the figure at the top left
with(extracted_data, plot(Time, Global_active_power,
                          type = "l",
                          xlab = "", ylab = "Global Active Power"))

# draw the figure at the top right
with(extracted_data, plot(Time, Voltage,
                          type = "l",
                          xlab = "datetime", ylab = "Voltage"))

# draw the figure at the bottom left
with(extracted_data, {
    plot(Time, Sub_metering_1, type = "n",
         xlab = "", ylab = "Energy sub metering")
    points(Time, Sub_metering_1, type = "l", col = "black")
    points(Time, Sub_metering_2, type = "l", col = "red")
    points(Time, Sub_metering_3, type = "l", col = "blue")
})
legend("topright", lty = "solid", lwd = 1, bty = "n",
       col = c("black","red","blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#draw the figure at the bottom right
with(extracted_data, plot(Time, Global_reactive_power, xlab = "datetime", type = "l"))

# close the graphics device
dev.off()