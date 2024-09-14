#Bar Charts
library(datasets)
head(mtcars)

barplot(mtcars$cyl)
cylinders <- table(mtcars$cyl)
barplot(cylinders)

#Histograms
head(iris)

hist(iris$Sepal.Length)
hist(iris$Petal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Width)

par(mfrow = c(3, 1))

hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0, 3),
     breaks = 9,
     main =  "Petal Width for Setosa",
     xlab = "",
     col = "red"
     )

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0, 3),
     breaks = 9,
     main =  "Petal Width for Versicolor",
     xlab = "",
     col = "purple"
)

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0, 3),
     breaks = 9,
     main =  "Petal Width for Virginica",
     xlab = "",
     col = "blue"
)

#ScatterPlots

plot(mtcars$wt, mtcars$mpg)
plot(mtcars$wt, mtcars$mpg,
     pch = 19,
     cex = 1.2,
     col = "red",
     main = "MPG as function of Weight of Cars",
     xlba = "Weight (in 1000 pounds)",
     ylab =  "MPG")

# Overlaying plots

head(lynx)

hist(lynx,
     breaks = 14,
     freq =  FALSE,
     col = "thistle1",
     main = paste("Histogram of Annual Cannadian Lynx",
                  "Trappings, 1821-1934"),
     xlab = "Number pff Lynx Trapped")

curve(dnorm(x, mean= mean(lynx), sd = sd(lynx)),
      col = "thistle4",
      lwd = 2,
      add = TRUE)
lines(density(lynx), col = "blue", lwd = 2 )
lines(density(lynx, adjust = 3), col = "purple", lwd = 2 )

#Summary()

summary(iris$Species)
summary(iris$Sepal.Length)
summary(iris)

#Describe()
p_load(psych)
p_help(psych, web = F)

# Selecting Cases

hist(iris$Petal.Length[iris$Species == "virginica" & iris$Petal.Length < 5.5],
     main = "Petal Lenght: Short virginica")

hist(iris$Petal.Length[iris$Petal.Length < 2],
     main = "Petal Lenght: Setosa")

i.setosa <- iris[iris$Species == "setosa", ]
summary(i.setosa$Petal.Length)










