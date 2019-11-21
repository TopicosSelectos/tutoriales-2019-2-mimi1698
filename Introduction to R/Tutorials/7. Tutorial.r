# 7.3 Creating a list
my_vector <- 1:10
my_matrix <- matrix(1:9, ncol = 3)
my_df <- mtcars[1:10, ]
my_list <- list(my_vector, my_matrix, my_df)
my_list

# 7.4 Creating a named list
mov <- "The Shining"
act <- c("Jack Nicholson", "Shelley Duvall",   "Danny Lloyd", "Scatman Crothers",  "Barry Nelson")
comments <- c("Best Horror Film I Have Ever Seen", "A truly brilliant and scary film from Stanley Kubrick", "A masterpiece of psychological horror")
comments
scores <- c(4.5, 4, 5)
scores
sources <- c("IMDb1", "IMDb2", "IMDb3")
sources
rev <- data.frame(scores, sources, comments)
rev
class(rev)
shining_list <- list(moviename = mov, actors = act, reviews = rev)
shining_list

# 7.5 Selecting elements from a list
shining_list$actors
shining_list$actors[2]

# 7.6 Adding more movie information to the list
shining_list_full <- c(shining_list, year = 1980)
shining_list_full
str(shining_list_full)
