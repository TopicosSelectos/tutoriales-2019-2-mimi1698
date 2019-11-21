# 4.1 Function documentation 
?mean
help(mean)
args(mean)

# 4.2 Use a function 
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
avg_li <- mean(x = linkedin)
avg_fb <- mean(facebook)
avg_li
avg_fb

# 4.3 Use a function 
avg_sum <- mean(linkedin + facebook)
avg_sum_trimmed <- mean(linkedin + facebook, trim = 0.2)
avg_sum
avg_sum_trimmed

# 4.4 Use a function 
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)
mean(linkedin)
mean(linkedin, na.rm = TRUE)

# 4.5 Functions inside functions
mean(abs(linkedin - facebook), na.rm = TRUE)

# 4.6 Write your own function 
pow_two <- function(x) {
  x ^ 2
}
pow_two(12)
sum_abs <- function(x, y){
  abs(x) + abs(y)
}
sum_abs(-2, 3)

# 4.7 Write your own function 
hello <- function() {
  print("Hi there!")
  TRUE
}
hello()

# 4.8 Write your own function 
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  if(print_info){
    print(paste(x, "to the power two equals", y))
  }
  return(y)
}
pow_two(5)
pow_two(5, FALSE)
pow_two(5, TRUE)

# 4.9 R you functional? 
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}
interpret(linkedin[1])
interpret(facebook[2])

# 4.10 R you functional? 
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}
interpret_all <- function(views, return_sum = TRUE){
  count <- 0
  
  for (v in views) {
    count <- count + interpret(v)
  }
  
  if (return_sum) {
    return(count)
  } else {
    return(NULL)
  }
}
interpret_all(linkedin)
interpret_all(facebook)

# 4.11 Load an R package 
library(ggplot2)
qplot(mtcars$wt, mtcars$hp)
search()