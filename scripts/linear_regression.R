
iv <- iris$Petal.Length
dv <- iris$Petal.Width
linear_model <- lm(dv~iv)
print(summary(linear_model))

test <- data.frame(iv = iris$Petal.Length)
result <-  predict(linear_model,test)
dev <- (result-dv)
plot(result,type = 'l',col = "blue")
lines(dv,col = "black")
boxplot(dev)
hist(dev)
