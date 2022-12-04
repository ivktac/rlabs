library(ggplot2)

mode <- function(x) {
    ux <- unique(x)
    ux[which.max(tabulate(x, ux))]
}

df <- ChichkWeight

weights <- df$weight

stats <- data.frame(
    xm = mean(weights),
    xq = sqrt(sum(weights^2) / length(weights)),
    xQ = (sum(weights^3) / length(weights))^(1 / 3),
    xh = length(weights) / sum(1 / weights),
    Sx2 = var(weights),
    median = median(weights),
    mode = mode(weights),
    sd = sd(weights)
)

qplot(
    data = df, weight,
    xlab = "Вага", ylab = "К-сть кур",
    main = "Дані про курей", binwidth = 3
)

hist(df$weight,
    probability = TRUE, col = "blue",
    xlab = "Вага курки", ylab = "Щільність",
    main = "Щільність розподілу"
)

weight_vector <- sapply(weights, function(x) {
    xm <- mean(weights)
    if (xm < x) {
        1
    } else if (xm > x) {
        -1
    } else {
        0
    }
})

set.seed(12345)
df <- data.frame(data = rnorm(250, mean = 60, sd = 15))
ggplot(df, aes(data) +
    stat_ecdf(geom = "step", aes(color = "ECDF")) +
    theme_light())
