# 4.1 What's a matrix 
matrix(1:9, byrow=TRUE, nrow=3)

# 4.2 Analyze matrices, you shall 
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
box_office <- c(new_hope, empire_strikes, return_jedi)
box_office
star_wars_matrix <- matrix(box_office, byrow=TRUE, nrow=3)
star_wars_matrix

# 4.3 Naming a matrix 
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)
star_wars_matrix
region <- c("US", "Non-US")
titles <- c("A new Hope", "The Empire Strikes Back", "Return of the Jedi")
colnames(star_wars_matrix) <- region
rownames(star_wars_matrix) <- titles
star_wars_matrix

# 4.4 Calculating the worldwide box office 
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector

# 4.5 Adding a column for the Worldwide box office 
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix

# 4.6 Adding a row 
box_office2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
star_wars_matrix2 <- matrix(box_office2, nrow = 3, byrow = TRUE, dimnames = list(c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith"), c("US", "non-US")))
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
all_wars_matrix

# 4.7 The total box office revenue for the entire saga 
total_revenue_vector <- colSums(all_wars_matrix)
total_revenue_vector

# 4.8 Selection of matrix elements 
non_us_all <- all_wars_matrix[,2]
non_us_all
mean(non_us_all)
non_us_some <- all_wars_matrix[1:2, 2]
non_us_some
mean(non_us_some)

# 4.9 A little arithmetic with matrices 
visitors <- all_wars_matrix/5
visitors

# 4.10 A little arithmetic with matrices
ticket_office <- c(5, 6, 7, 4, 4.5, 4.9)
ticket_prices1 <- matrix(ticket_office, nrow = 3, byrow = TRUE, dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), c("US", "non-US")))
ticket_office2 <- c(5, 6, 7, 4, 4.5, 4.9)
ticket_prices2 <- matrix(ticket_office2, nrow = 3, byrow = TRUE, dimnames = list(c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith"), c("US", "non-US")))
ticket_prices_matrix <- rbind(ticket_prices1, ticket_prices2)
ticket_prices_matrix
visitors <- all_wars_matrix / ticket_prices_matrix
visitors
us_visitors <- visitors[,1]
us_visitors
mean(us_visitors)
