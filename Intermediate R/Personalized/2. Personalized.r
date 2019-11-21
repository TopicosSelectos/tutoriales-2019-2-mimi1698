12 * 2 != 30 - 6
"flor" == "FLOr"
FALSE == 1 
"star" <= "starry sky"
likesTwitter <- c(5, 2, 7, 9, 23)
likesFB <- c(40, 15, 7, 39, 1)
likesTwitter < 15
likesTwitter >= 5
likesTwitter > likesFB
likes <- matrix(c(likesTwitter, likesFB), nrow = 2, byrow = TRUE)
likes
likes == 7
likes <= 20

last <- tail(likesTwitter, 1)
last
2 > last | last > 7
2 < last & last <= 7
likesTwitter
likesFB
likes
likesTwitter > 5 & likesTwitter >15
likesTwitter >= 7 | likesFB >= 15
likes > 5 & likes <= 10
 
medium <- "TwitterL"
num_views <- 20
if (medium == "TwitterL") {
  print("Showing Likes from Twitter")
}
if (num_views > 18) {
  print("You're popular!")
}
if (medium == "TwitterL") {
  print("Showing Likes from Twitter")
} else {
  print("Unknown likes")
}
if (num_views > 18) {
  print("You're popular!")
} else {
  print("Try to gather more likes!")
}
if (medium == "TwitterL") {
  print("Showing Likes from Twitter")
} else if (medium == "FBL") {
  print("Showing Likes from Facebook")
} else {
  print("Unknown Likes")
}
if (num_views > 18) {
  print("You're popular!")
} else if (num_views <= 18 & num_views > 15) {
  print("Your number of likes is average /:")
} else {
  print("Try to gather more likes!")
}

twitter <- 18
fb <- 34
if (twitter >= 18 & fb >= 18) {
  res <- 5 * (li + fb)
} else if (twitter < 7 & fb < 7) {
  res <- 2 * (twitter + fb)
} else {
  res <- twitter + fb
}
res