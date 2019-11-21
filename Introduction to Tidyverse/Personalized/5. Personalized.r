library(tidyverse)
by_carat <- diamonds %>% 
  group_by(carat) %>%
  summarize(medianDepth = median(depth))
ggplot(by_carat, aes(x = carat, y = medianDepth)) + geom_line()

by_carat_clarity <- diamonds %>%
  group_by(carat, clarity) %>%
  summarize(medianPrice = median(price))
by_year_continent
ggplot(by_carat_clarity, aes(x = carat, y = medianPrice, color = clarity)) + geom_line()

by_clarity_c29 <- diamonds %>%
  filter(carat == 0.29) %>%
  group_by(clarity) %>%
  summarize(medianDepth = median(depth))
ggplot(by_clarity_c29, aes(x = clarity, y = medianDepth)) + geom_col()

# 5.4 Visualizing GDP per capita vy country in Ocenia 
oceania_1952 <- gapminder %>%
  filter(continent == "Oceania", year == 1952)
ggplot(oceania_1952, aes(x = country, y = gdpPercap)) + geom_col()

diamonds_29 <- diamonds %>%
  filter(carat == .29)
ggplot(diamonds_29, aes(x = price)) + geom_histogram()

ggplot(diamonds_29, aes(x = price)) + geom_histogram() + scale_x_log10()

ggplot(diamonds_29, aes(x = clarity, y = price )) + geom_boxplot() + scale_y_log10()

ggplot(diamonds_29, aes(x = clarity, y = price )) + geom_boxplot() + 
  scale_y_log10() + ggtitle("Comparing price per clarity")
