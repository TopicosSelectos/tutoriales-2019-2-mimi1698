# 3.1 Write a while loop 
speed <- 64
while (speed > 30) {
  print("Slow down!")
  speed <- speed - 7
}
speed

# 3.2 Throw in more conditionals 
speed <- 64 
while(speed > 30){
  print(paste("Your speed is", speed))
  if(speed > 48){
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

# 3.3 Stop the while loop break 
speed <- 88 
while(speed > 30){
  print(paste("Your speedis", speed))
  if(speed > 80){
    break
  }
  
  if(speed > 48){
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6 
  }
}

# 3.4 Build a while loop from scratch 
i <- 1 
while(i <= 10){
  print(3 * i)
  if((3 * i) %% 8 == 0){
    break
  }
  i <- i + 1
}

# 3.5 Loop over a vector 
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
for(li in linkedin) {
  print(li)
}
for(i in 1:length(linkedin)){
  print(linkedin[i])
}

# 3.6 Loop over a list 
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)
for(info in nyc){
  print(info)
}
for(i in 1:length(nyc)){
  print(nyc[[i]])
}

# 3.7 Loop over a matrix 
d1 <- c("0", "NA", "X")
d2 <- c("NA", "0", "0")
d3 <- c("X", "NA", "X")
ttt_data <- c(d1, d2, d3)
ttt_data 
ttt <- matrix(ttt_data, byrow = TRUE, nrow = 3)
for(i in 1:nrow(ttt)){
  for(j in 1:ncol(ttt)){
    print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
  }
}

# 3.8 Mix it up with control flow 
for(li in linkedin){
  if(li > 10){
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  print(li)
}

# 3.9 Next, you break it 
for(li in linkedin){
  if(li > 10){
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  if(li > 16){
    print("This is ridiculous, I'm outta here!")
    break
  }
  if(li < 5) {
    print("This is too embarrassing!")
    next 
  }
  print(li)
}

# 3.10 Build a for loop from scratch 
rquote <- "r's internals are irrefutably intriguing"
rquote
chars <- strsplit(rquote, split = "")[[1]]
chars
rcount <- 0 
for (char in chars) {
  if (char == "r") {
    rcount <- rcount + 1
  }
  if (char == "u") {
    break
  }
}
rcount