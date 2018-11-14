'
  See if you can add 2 numbers then you can add 5 numbers as well.
  If you can multiply 2 to 10, you can multiply 2 to 100000.
  Just as big is our universe, as big is the data science field.
'
## Few basic R commands
- version()
- license() or licence()
- contributors()
- citation()
- demo()
- help()
- help.start()
- q()

#
path="C:\\SD\\sdsd\\kijlkj\\"
path = normalizePath(path)


#Available datasets (For free)
data(lynx)
lynx
Titanic
cars
mtcars
length(lynx)
summary(cars)
str(cars)
str(iris)
summary(cars)
range(cars$speed)
diff(range(cars$speed))

"
  tertiles - three parts
  quintiles - 5 parts
  deciles - 10 parts
  percentiles - 100 parts
"
quantile(cars$speed)
percentiles(cars$speed)
IQR(cars$speed)
quantile(cars$speed, seq(from = 0, to = 1, by = 1))
quantile(cars$speed, seq(from = 0, to = 1, by = 0.5))   # 
quantile(cars$speed, seq(from = 0, to = 1, by = 0.25))  # Quartile - 3 points
quantile(cars$speed, seq(from = 0, to = 1, by = 0.20))  # 4 points to divide a distribution into five parts 
quantile(cars$speed, seq(from = 0, to = 1, by = 0.10))  # 9 points - 10 equal parts
quantile(cars$speed, seq(from = 0, to = 1, length.out = 5)) # Quartile
table(cars)

# Analysis of Iris data

cor(iris$Petal.Length,iris$Sepal.Length)
cor(iris[, c('Petal.Length', 'Sepal.Length','Petal.Width','Sepal.Width')])
names(mtcars)
names(cars)

attach(iris)
plot(Petal.Length,Petal.Width)
lmo <- lm(Petal.Width~Petal.Length+Petal.Width)
plot(Petal.Width - lmo$fitted.values)
cor(Petal.Width,Petal.Length)
abline(lm(Petal.Width~Petal.Length))
title("Line fitting on iris data")
detach(iris)

# Generate random values for your data
set.seed(11)  # To get the same random values always
rnorm(100) 
