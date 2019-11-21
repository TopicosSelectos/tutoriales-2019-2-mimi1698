# 3.1 Create a vector 
vegas <- "Go!"

# 3.2 Create a vector 
numeric_vector <- c(1,2,3)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE, FALSE, TRUE)

# 3.3 Create a vector 
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)

# 3.4 Naming a vector 
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# 3.5 Naming a vector 
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# 3.6 Calculation total winnings 
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)
total_vector <- A_vector + B_vector
total_vector

# 3.7 Calculating total winnings 
total_daily <- poker_vector + roulette_vector
total_daily

# 3.8 Calculating total winnings 
total_poker <- sum(poker_vector)
total_poker
total_roulette <- sum(roulette_vector)
total_roulette
total_week <- total_poker + total_roulette
total_week

# 3.9 Comparing total winnings 
total_poker > total_roulette

# 3.10 Vector selection: the good times 
poker_wednesday <- poker_vector[3]
poker_wednesday

# 3.11 Vector selection: the good times
poker_midweek <- poker_vector[c(2, 3, 4)]
poker_midweek

# 3.12 Vector selection: the good times 
roulette_selection_vector <- roulette_vector[2:5]
roulette_selection_vector

# 3.13 Vector selection: the good times 
poker_start <- poker_vector[c("Monday", "Tuesday", "Wednesday")]
poker_start
mean(poker_start)

# 3.14 Selection by comparison - Step 1
selection_vector <- poker_vector > 0
selection_vector

# 3.15 Selection by comparison - Step 2 
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days

# 3.16 Advanced selection 
selection_vector <- roulette_vector > 0
selection_vector
roulette_winning_days <- roulette_vector[selection_vector]
roulette_winning_days
