hpbooks <- c("HARRYPOTTER1:1997", "HARRYPOTTER2:1998", "HARRYPOTTER3:1999", "HARRYPOTTER4:2000")
split <- strsplit(hpbooks, split = ":")
split
splitLow <- lapply(split, tolower)
splitLow
str(splitLow)

split <- strsplit(hpbooks, split = ":")
split
split_low <- lapply(split, tolower)
split_low
selectFirst <- function(x) {
  x[1]
}
names <- lapply(split_low, select_first)
names

namesBooks <- lapply(split_low, function(x) { x[1] })
namesBooks
yearsPublished <- lapply(split_low, function(x) { x[2] })
yearsPublished

g1 <- c( 10,  9,  10)
g2 <- c( 6,  9, 10)
g3 <- c(4,  8,  3)
g4 <- c(10,  4,  8)
g5 <- c(5, 7, 9)
grades <- list(g1, g2, g3, g4, g5)
grades
class(grades)
lapply(grades, min)
sapply(grades, min)
lapply(grades, max)
sapply(grades, max)

extremes <- function(x) {
  c(min = min(x), max = max(x))
}
sapply(grades, extremes)
lapply(grades, extremes)

basics <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x))
}
vapply(grades, basics, numeric(3))

vapply(grades, max, numeric(1))
vapply(grades, function(x, y) { mean(x) > y }, logical(1), y = 5)
