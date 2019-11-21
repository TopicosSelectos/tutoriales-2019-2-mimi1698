# 4.1 Summarizing the median life expectancy 
library(tidyverse)
library(gapminder)
gapminder %>% 
  summarize(medianLifeExp = median(lifeExp))

# 4.2 Summarizing the median life expectancy in 1957 
gapminder %>%
  filter(year == 1957) %>%
  summarize(medianLifeExp = median(lifeExp))

# 4.3 Summarizing multiple variables in 1957 
gapminder %>%
  filter(year == 1957) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))

# 4.4 Summarizing by year 
gapminder %>% 
  group_by(year) %>%
  summarize(meadianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))

# 4.5 Summarizing by continent 
gapminder %>% 
  group_by(continent) %>% 
  summarize(meadianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))

# 4.6 Summarizing by continent and year 
gapminder %>% 
  group_by(continent, year) %>% 
  summarize(meadianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))

# 4.7 Visualizing median life expectancy over time 
by_year <- gapminder %>% 
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))
ggplot(by_year, aes(x = year, y = medianLifeExp)) + geom_point() + expand_limits(y = 0)

# 4.8 Visualizing median GDP per capita per continent over time 
by_year_continent <- gapminder %>%
  group_by(continent, year) %>%
  summarize(medianGdpPercap = median(gdpPercap))
by_year_continent
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, color = continent)) + geom_point() +
  expand_limits(y = 0)

# 4.9 Comparing median life expectancy and median GDP per continent in 2007 
by_continent_2007 <- gapminder %>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarize(medianGdpPercap = median(gdpPercap), medianLifeExp = median(lifeExp))
ggplot(by_continent_2007, aes(x = medianGdpPercap, y = medianLifeExp, color = continent)) + geom_point()