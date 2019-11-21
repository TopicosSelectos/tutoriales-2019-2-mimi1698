# 6.1 What's a data frame? 
mtcars
class(mtcars)

# 6.2 Quick, have a look at your data set
head(mtcars)
?mtcars

# 6.3 Have a look at the structure
str(mtcars)

# 6.4 Creating a data frame
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
name
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
type
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
diameter
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rotation
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
rings
planets_df <- data.frame(name, type, diameter, rotation, rings)
planets_df
class(planets_df)

# 6.5 Creating a data frame
str(planets_df)

# 6.6 Selection of data frame elements
planets_df[1,3]
planets_df[4,]

# 6.7 Selection of data frame elements
planets_df[1:5, "diameter"]

# 6.8 Only planets with rings
rings_vector <- planets_df$rings
rings_vector

# 6.9 Only planets with rings
planets_df[rings_vector,]

# 6.10 Only planets with rings but shorter
subset(planets_df, subset = rings)

# 6.12 Sorting your data frame 
position <- order(planets_df$diameter)
position
planets_df[position, ]
