library(datasets)
head(iris)

plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000",
     pch = 19,
     main = "Iris: Petal Length vs Width.",
     xlab = "Petal Length",
     ylab = "Petal Width",)

plot(cos, 0 , 2*pi)
plot(exp, 1, 5)
plot(dnorm, -3, +3,
     col = "#cc0000",
     lwd = 4,
     main = "Standard Normal Distribution",
     xlab = "z-cores",
     ylab = "Density")

detach("package:datasets", unload = TRUE)
