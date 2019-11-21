likesTwitter <- c(5, 2, 7, 9, 23)
likesFB <- c(40, 15, 7, 39, 1)
avgT <- mean(x = likesTwitter)
avgFB <- mean(likesFB)
avgT
avgFB

avgSum <- mean(likesTwitter + likesFB)
avgSumTrimmed <- mean(likesTwitter + likesFB, trim = 0.1)
avgSum
avgSumTrimmed
 
likesTwitter <- c(5, NA, 7, 9, 23)
likesFB <- c(40, 15, NA, 39, 1)
mean(likesTwitter)
mean(likesTwitter, na.rm = TRUE)

mean(abs(likesTwitter - likesFB), na.rm = TRUE)

likesTwitter <- c(5, 2, 7, 9, 23)
likesFB <- c(40, 15, 7, 39, 1)
sumMean <- function(x, y) {
  mean(x) + mean(y)
}
sumMean(likesTwitter, likesFB)

popular <- function(numLikes) {
  if (numLikes > 15) {
    print("You're popular!")
    return(numLikes)
  } else {
    print("Try to gather more likes!")
    return(0)
  }
}

popular(likesTwitter[1])
