x <- iris[order(iris$Sepal.Width),] # sort by Species
x$Species <- factor(x$Species) # it must be a factor
x$color[x$Species=="setosa"] <- "magenta"
x$color[x$Species=="virginica"] <- "orange"
x$color[x$Species=="versicolor"] <- "black"
dotchart(x$Sepal.Width, color=x$color) 