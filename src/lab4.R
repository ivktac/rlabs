data <- rbinom(100, 100, 0.5)
x <- cut(data, breaks = 5, right = FALSE)
t <- table(x)

df <- data.frame(
    xm = mean(data),
    Sx2 = var(data),
    sd = sd(data)
)

barplot(
    height = t / length(x), beside = TRUE, ylim = c(0, 0.5),
    xlab = "x", ylab = "P(x)", main = "Гістограма розподілу ймовірностей"
)

pie(t,
  labels = paste(names(t), t, sep = ": "),
  main = "Кругова діаграма"
)

Fn <- ecdf(data)
summary(Fn)
plot(Fn,
  verticals = TRUE, col.points = "blue",
  col.hor = "red", col.vert = "bisque"
)
Fn(data)