# ML

pacman::p_load(pacman, dplyr, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio,
               rmarkdown, shiny, stringr, tidyr)
library(datasets)

?mtcars

head(mtcars)

cars <- mtcars[, c(1:4, 6:7, 9:11)]
head(cars)

hc <- cars %>%
      dist %>%
      hclust
plot(hc)

rect.hclust(hc, k =2, border = "gray")
rect.hclust(hc, k =3, border = "blue")
rect.hclust(hc, k =4, border = "green4")
rect.hclust(hc, k =5, border = "darkred")


# PCA

head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)]
head(cars)

pc <- prcomp(cars, center = T, scale = T)

summary(pc)

plot(pc)

pc

predict(pc) %>% round(2)

biplot(pc) 

#Regression
?USJudgeRatings
head(USJudgeRatings)

data <- USJudgeRatings

x <- as.matrix(data[-12])
y <- data[, 12]

reg1 <- lm(y ~ x)

reg1
summary(reg1)

anova(reg1)
coef(reg1)
confint(reg1)
resid(reg1)
hist(residuals(reg1))  

p_load(lars, caret)

stepwise <- lars(x, y, type = "stepwise")
foward <- lars(x, y, type = "forward.stepwise")
lar <- lars(x, y, type = "lar")
lasso <-  lars(x, y, type = "lass" )









