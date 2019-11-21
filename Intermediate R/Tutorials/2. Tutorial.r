# 2.1 Equality 
TRUE == FALSE 
-6 * 14 != 17 - 101
"useR" == "user"
TRUE == 1 
-6 * 5 + 2 >= -10 + 1
"raining" <= "raining dogs"
TRUE > FALSE 
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
linkedin > 15
linkedin <= 5
linkedin > facebook
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
views
views == 13
views <= 14

# 2.2 Logical Operators 
last <- tail(linkedin, 1)
last
5 > last | last > 10
15 < last & last <= 20
linkedin
facebook
views
linkedin > 10 & facebook < 10
linkedin >= 12 | facebook >= 12
views > 11 & views <= 14
 

# 2.3 Conditional Statements 
medium <- "LinkedIn"
num_views <- 14
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}
if (num_views > 15) {
  print("You're popular!")
}
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else {
  print("Unknown medium")
}
if (num_views > 15) {
  print("You're popular!")
} else {
  print("Try to be more visible!")
}
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}
number <- 5
if (number < 10) {
  if (number < 5) {
    result <- "extra small"
  } else {
    result <- "small"
  }
} else if (number < 100) {
  result <- "medium"
} else {
  result <- "large"
}
print(result)
li <- 15
fb <- 9
if (li >= 15 & fb >= 15) {
  sms <- 2 * (li + fb)
} else if (li < 10 & fb < 10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li + fb
}
sms
