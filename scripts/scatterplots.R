attach(iris)
pairs(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width)
plot(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,col=rainbow(3))

plot(Petal.Length,Petal.Width)
plot(Petal.Width,Petal.Length)

detach(iris)
plot(Sepal.Length,Species)
barplot(Sepal.Length,)

counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts)) 
