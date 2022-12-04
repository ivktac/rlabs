set.seed(1234)

x <- dbinom(0:50, 50, 0.2)
barplot(x,
    names = as.character(0:50), main = "Біномінальний розподіл",
    ylim = c(0, 0.2)
)

x <- dpois(0:50, lambda = 1)
barplot(x,
    names = as.character(0:50), main = "Пуасонівський розподіл",
    ylim = c(0, 0.4)
)

x <- dgeom(0:50, prob = 0.25)
barplot(x,
    names = as.character(0:50), main = "Геометричний розподіл",
    ylim = c(0, 0.3)
)

x <- dhyper(0:50, 26, 34, 50)
barplot(x,
    names = as.character(0:50), main = "Гіпергеометричний розподіл",
    ylim = c(0, 0.3)
)

x <- dnorm(0:50, mean = 25, sd = 5)
barplot(x,
    names = as.character(0:50), main = "Нормальний розподіл",
    ylim = c(0, 0.1)
)

x <- dchisq(0:50, df = 25)
barplot(x,
    names = as.character(0:50), main = "x^2 розподіл",
    ylim = c(0, 0.1)
)

x <- df(0:50, df1 = 10, df2 = 20)
barplot(x,
    names = as.character(0:50), main = "Розподіл Фішера",
    ylim = c(0, 1)
)

x <- dt(0:50, df = 25)
barplot(x,
    names = as.character(0:50), main = "Розподіл Стьюдента",
    ylim = c(0, 0.5)
)

x <- dhyper(0:6, 6, 14, 6)
barplot(x, names = as.character(0:6), ylim = c(0, 0.4), density = 16)

p <- 1 - 0.9
x <- dgeom(1:50, prob = p)
barplot(x, names = as.character(1:50), ylim = c(0, p))
which.max(x)
