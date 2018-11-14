# Author: Deepak@INMASS or Code developed by Deepak Sharma https://github.com/Depthgr8
# Date: November 15, 2018
# INMAS
# R programming - best practices ------------------------------------------

# Writing a robust code - a nice way to check & install a package
if(! ("neuralnet" %in% installed.packages())) # If package is not previously installed
  install.packages("neuralnet")
library(neuralnet)

# Documentation -----------------------------------------------------------
# Put first things first - User friendly

# Which coding style is best?
# Style 1
a <- 10
b <- 20
c <- (10+20)/2

# Style 2
variable_number_1 <- 10 
variable_number_2 <- 20
third_variable <- mean(c(variable_number_1,variable_number_2))

# Style 3 # Folding - Code section using pound sign #####
  # Indent if it improves readability
  var1 <- 10  # First variable
  var2 <- 20  # Second variable
  average_value <- mean(c(var1,var2)) # Calculate average value using standard mean() function
  print(average_value) # Display the average value

# Keep yourself up-to-date ------------------------------------------------

version   # To know the version of R which you are using
packageVersion("dplyr") # To know the version of package you use

# Do profiling ------------------------------------------------------------

# Try writing efficient programs (Save time)
numbers <- 1:100000000
system.time({ 
  total <- 0
  total <- sum(c(numbers))  # Vectorized code
  cat("Sum is : ",total,"\n")
})
system.time({ # R is case sensitive ('System' is not equals to 'system')
  total <- 0
  for(i in numbers) # Iterative approach
    total <- total + i
  cat("Sum is : ",total,"\n")
})

# Help --------------------------------------------------------------------
# Take help from help function before you plan to take help from internet
help(sum)

# Learn to use shortcuts --------------------------------------------------

Ctrl + Shift + C  # Comment selected lines
Ctrl + Shift + R  # Insert section
Ctrl + L  # Clear console

# References --------------------------------------------------------------
# Shift + Click
https://www.r-bloggers.com/r-best-practices-r-you-writing-the-r-way/
http://dataaspirant.com/2017/11/04/smart-r-programming-tips/
