library(datasets)

data(freeny)
freeny_relation <- lm(price.index ~ income.level, data = freeny)
summary(freeny_relation)

data(pressure)
pressure_relation <- lm(pressure ~ temperature, data = pressure)
summary(pressure_relation)


data <- data.frame(
    x = c(
        1, 3, 6, 8, 9, 10, 11, 12, 14, 16, 17, 18,
        20, 22, 23, 24, 25, 27, 29, 30
    ),
    y = c(
        30, 0, -210, -530, -762, -1050, -1400, -1818, -2882, -4290, -5138,
        -6090, -8330, -11058, -12620, -14322, -16170, -20328, -25142, -27810
    )
)

print(round(cor(data), 2))

plot(data$x, data$y)

pairs(data[, c("x", "y")])

print(cor(data$x, data$y))

relation <- lm(y ~ x, data = data)
print(summary(relation))

print(cor(data$x, data$y, method = "pearson"))
print(cor(data$x, data$y, method = "spearman"))