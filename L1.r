x <- c(200, 500, 700, 1000)
y <- c(0.25, 0.5, 0.8, 1.5)
data_set <- data.frame(x,y)
data_set
View(data_set)
str(data_set)
names(data_set)
plot(x, y)
res <- lm(y~x)
res
summary(res)
abline(res, col='blue')
x1 <- data.frame(x = c(1200))
R <- predict(res, x1)
R
summary(R)
