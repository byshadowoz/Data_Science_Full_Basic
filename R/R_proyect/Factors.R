# Factors
(x <- 1:3)
(y <- 1:9)

#combine
(df1 <- cbind.data.frame(x,y))
typeof(df1$x)
str(df1)

(x2 <- as.factor(c(1:3)))
(df2 <- cbind.data.frame(x2, y))
typeof(df2$x2)
str(df2)

x3 <- c(1,2,3)
df3 <- cbind.data.frame(x3,y)
(df3$x3 <- factor(df3$x3,
                  levels = c(1,2,3)))
str(df3)

x4 <- c(1:3)
df4 <- cbind.data.frame(x4, y)
(df4$x4 <- factor(df4$x4,
                  levels = c(1,2,3),
                  labels = c("macOS", "windows", "linux")))
df4
typeof(df4$x4)
str(df4)



