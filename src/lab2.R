library(datasets)

data(airquality)

x <- seq(-2 * pi, 2 * pi, length.out = 100)
plot(x, sin(x),
    type = "l", col = "red", lty = "dashed",
    xlab = "x", ylab = "y", main = "Plot of y = sin(x)"
)
plot(x, cos(x),
    type = "s", col = "blue", fg = "yellow",
    xlab = "x", ylab = "y", main = "Plot of y = cos(x)"
)
plot(x, tan(x),
    type = "p", col = "green", lwd = 2,
    xlab = "x", ylab = "y", main = "Plot of y = tan(x)"
)
plot(x, 1 / tan(x),
    type = "h", col = "purple", lwd = 2,
    xlab = "x", ylab = "y", main = "Plot of y = 1/tan(x)"
)


hist(airquality$Temp,
    breaks = 10, col = "blue",
    xlab = "Temperature", ylab = "Frequency", main = "Histogram of Temperature"
)
legend(
    x = "topright", inset = 0.2, title = "Temperature",
    c("Celsius"), fill = c("blue")
)

dotchart(airquality$Temp,
    labels = airquality$Month, col = "green",
    xlab = "Temperature", ylab = "Month", main = "Dotchart of Temperature"
)

par(bg = "light blue")
plot(-4:4, -4:4, type = "n")
points(0, 1, col = "red", pch = 16)
points(3, 2, col = "red", pch = 16)
points(2, 3, col = "yellow", pch = 16)
points(1, 0, col = "yellow", pch = 16)
segments(0, 1, 3, 2, col = "red", lwd = 2)
segments(3, 2, 2, 3, col = "yellow", lwd = 2)
segments(2, 3, 1, 0, col = "yellow", lwd = 2)
segments(1, 0, 0, 1, col = "red", lwd = 2)
