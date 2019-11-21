grade <- 64
while (grade < 70) {
  print("You're failing!")
  grade <- grade + 2
}
grade
 
grade <- 45 
while(grade < 70){
  print(paste("Your grade is", grade))
  if(grade < 40){
    print("Get to work!")
    grade <- grade + 5
  } else {
    print("You're kind of there!")
    grade <- grade + 2
  }
}

grade <- 65 
while(grade < 70){
  print(paste("Your grade is", grade))
  if(grade > 70){
    break
  }
  
  if(grade < 40){
    print("Get to work!")
    grade <- grade + 5
  } else {
    print("You're kind of there!")
    grade <- grade + 2
  }
}
 
likesTwitter <- c(5, 2, 7, 9, 23)
for(t in likesTwitter) {
  print(t)
}
for(i in 1:length(likesTwitter)){
  print(likesTwitter[i])
}

mexcd <- list(pop = 8918653, 
            boroughs = c("Iztacalco", "Iztapalapa", "Tlapan", "Tlahuac", "Benito Juarez"))
for(info in mexcd){
  print(info)
}
for(i in 1:length(mexcd)){
  print(mexcd[[i]])
}
 
c1 <- c("X", "0", "0")
c2 <- c("0", "X", "NA")
c3 <- c("NA", "NA", "0")
ttt_data <- c(c1, c2, c3)
ttt_data 
ttt <- matrix(ttt_data, byrow = TRUE, nrow = 3)
for(i in 1:nrow(ttt)){
  for(j in 1:ncol(ttt)){
    print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
  }
}
 
tl <- 18
for(t in likesTwitter){
  if(tl > 15){
    print("You're popular!")
  } else {
    print("Gather more likes!")
    break
  }
  tl <- tl -1
  print(t)
}