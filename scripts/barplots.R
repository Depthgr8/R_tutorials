
# Simple barplot ----------------------------------------------------------

data <- iris$Sepal.Length
barplot(data,horiz = F,col = c("salmon3")) 
nlevels(factor(data))

# Grouped barplot ---------------------------------------------------------

data <- matrix(0,2,5)
data[1,] <- iris$Sepal.Width[seq(1,5)]
data[2,] <- iris$Sepal.Length[seq(1,5)]
print(data)
barplot(data, beside=T,col = c("dodgerblue2","tomato2"))
legend("left", c("Sepal Width","Sepal Length"), pch=20, 
       col=c("dodgerblue2","tomato2"), 
       bty="n")
dev.off()

