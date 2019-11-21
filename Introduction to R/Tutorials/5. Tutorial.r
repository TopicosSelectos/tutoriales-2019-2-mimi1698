# 5.1 What's a factor and why would you use it? 
theory <- "factors for categorical variables"

# 5.2 What's a factor and why would you use it?
sex_vector <- c("Male", "Female", "Female", "Male", "Male")
sex_vector
factor_sex_vector <- factor(sex_vector)
factor_sex_vector

# 5.3 What's a factor and why would you use it?
animals <- c("Elephant", "Giraffe", "Donkey", "Horse")
animals
class(animals)
factor_animals <- factor(animals)
factor_animals
temperature <- c("Medium", "Low", "High", "Low")
temperature
factor_temperature <- factor(temperature, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature

# 5.4 Factor levels
survey <- c("M", "F", "F", "M", "M")
survey 
factor_survey <- factor(survey)
factor_survey
levels(factor_survey) <- c("Female", "Male")
factor_survey

# 5.5 Summarizing a factor
summary(survey)
summary(factor_survey)

# 5.6 Battle of the sexes
male <- factor_survey[1]
male 
female <- factor_survey[2]
female
male > female

# 5.7 Ordered factors
speed <- c("Medium", "Slow", "Slow", "Medium", "Fast")
speed

# 5.8 Ordered factors
factor_speed <- factor(speed, ordered = TRUE, levels = c("Slow", "Medium", "Fast"))
factor_speed
summary(factor_speed)

# 5.9 Comparing ordered factors 
da2 <- factor_speed[2]
da2
da5 <- factor_speed[5]
da5
da2 > da5
