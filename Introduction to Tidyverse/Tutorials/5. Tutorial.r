# 5.1 Visualizing median GDP per capita over time
library(tidyverse)
library(gapminder)
by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianGdpPercap = median(gdpPercap)) 
ggplot(by_year, aes(x = year, y = medianGdpPercap)) + geom_line() + expand_limits(y = 0)

# 5.2 Visualizing median GDP per capita by continent over time
by_year_continent <- gapminder %>%
  group_by(year, continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, color = continent)) + geom_line() + expand_limits(y = 0)

# 5.3 Visualizing median GDP per capita by continent 
by_continent <- gapminder %>%
  group_by(continent) %>%
  filter(year == 1952) %>%
  summarize(medianGdpPercap = median(gdpPercap))
ggplot(by_continent, aes(x = continent, y = medianGdpPercap)) + geom_col()

# 5.4 Visualizing GDP per capita vy country in Ocenia 
oceania_1952 <- gapminder %>%
  filter(continent == "Oceania", year == 1952)
ggplot(oceania_1952, aes(x = country, y = gdpPercap)) + geom_col()

# 5.5 Visualizing population 
gapminder_1952 <- gapminder %>%
  filter(year == 1952)
ggplot(gapminder_1952, aes(x = pop)) + geom_histogram()

# 5.6 Visualizing population with x-axis on a log scale
ggplot(gapminder_1952, aes(x = pop)) + geom_histogram() + scale_x_log10()

# 5.7 Comparing GDP per capita across continents 
ggplot(gapminder_1952, aes(x = continent, y = gdpPercap )) + geom_boxplot() + scale_y_log10()

# 5.8 Adding a title to your graph 
ggplot(gapminder_1952, aes(x = continent, y = gdpPercap )) + geom_boxplot() + 
  scale_y_log10() + ggtitle("Comparing GDP per capita accross continents")
