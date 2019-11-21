# 5.1 Use lapply with a built-in R function
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split_math <- strsplit(pioneers, split = ":")
split_math
split_low <- lapply(split_math, tolower)
split_low
str(split_low)

# 5.2 Use lapply with your own function
split <- strsplit(pioneers, split = ":")
split
split_low <- lapply(split, tolower)
split_low
select_first <- function(x) {
  x[1]
}
names <- lapply(split_low, select_first)
names
select_second <- function(x) {
  x[2]
}
years <- lapply(split_low, select_second)
years

# 5.3 lapply and anonymous functions
names <- lapply(split_low, function(x) { x[1] })
names
years <- lapply(split_low, function(x) { x[2] })
years

# 5.4 Use lapply with additional arguments
select_el <- function(x, index) {
  x[index]
}
names <- lapply(split_low, select_el, index = 1)
names
years <- lapply(split_low, select_el, index = 2)
years

# 5.5 How to use sapply 
t1 <- c( 3,  7,  9,  6, -1)
t2 <- c( 6,  9, 12, 13,  5)
t3 <- c(4,  8,  3, -1, -3)
t4 <- c(1,  4,  7,  2, -2)
t5 <- c(5, 7, 9, 4, 2)
t6 <- c(-3,  5,  8,  9,  4)
t7 <- c(3, 6, 9, 4, 1)
temp <- list(t1, t2, t3, t4, t5, t6, t7)
temp
class(temp)
lapply(temp, min)
sapply(temp, min)
lapply(temp, max)
sapply(temp, max)

# 5.6 sapply with your own function
extremes_avg <- function(x) {
  ( min(x) + max(x) ) / 2
}
sapply(temp, extremes_avg)
lapply(temp, extremes_avg)

# 5.7 sapply with function returning vector
extremes <- function(x) {
  c(min = min(x), max = max(x))
}
sapply(temp, extremes)
lapply(temp, extremes)

# 5.8 sapply can't simplify, now what?
below_zero <- function(x) {
  return(x[x < 0])
}
freezing_s <- sapply(temp, below_zero)
freezing_s
freezing_l <- lapply(temp, below_zero)
freezing_l
identical(freezing_s, freezing_l)

# 5.9 sapply with functions that return NULL
print_info <- function(x) {
  cat("The average temperature is", mean(x), "\n")
}
sapply(temp, print_info)
lapply(temp, print_info)

# 5.10 Use vapply
basics <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x))
}
vapply(temp, basics, numeric(3))

# 5.11 Use vapply 
basics <- function(x) {
  c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}
vapply(temp, basics, numeric(4))

# 5.12 From sapply to vapply
vapply(temp, max, numeric(1))
vapply(temp, function(x, y) { mean(x) > y }, logical(1), y = 5)
