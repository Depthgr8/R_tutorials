cat('\f')     # Same as Ctrl + L
rm(list=ls()) # Same as clearing objects from workspace 
setwd('C:\\Users\\Work\\Desktop\\MIT_scripts')
getwd()
data <- read.csv(file = 'Data/Iris.csv',header = T)
# Average sepal length
average_sepal_length <- mean(data$Sepal.length)
print(average_sepal_length)
# Median of petal width
median_petal_width <- median(data$Petal.width)
print(median_petal_width)
# Mode of variety
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
  }
mode_species <- Mode(data$Species)
print(mode_species)
install.packages('modest')
# What will happen if you take average of characters
a.n.d <- rnorm(100000,mean=50,sd = 1)
png(file = "hist_pdf.png",width = 1200, height = 1200)
hist(a.n.d,probability = T,col = "magenta", breaks=100,border = "pink",)
lines(density(a.n.d),col="white")
dev.off()
install.packages('moments')
library(moments)
skewness(a.n.d)
kurtosis(a.n.d)
nd <- c()
Mode(nd)
skewness(nd)
kurtosis(nd)
