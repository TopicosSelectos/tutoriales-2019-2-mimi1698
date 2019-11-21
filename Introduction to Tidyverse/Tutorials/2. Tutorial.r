# 2.1 Loading the gapminder and dplyr package
library(tidyverse)
library(gapminder)
gapminder

# 2.2 Filtering for one year
gapminder %>% 
  filter(year == 1957)

# 2.3 Filtering for one country and one year 
gapminder %>% 
  filter(country == "China", year == 2002)

# 2.4 Arranging observations by life expectancy 
gapminder %>% 
  arrange(lifeExp)
gapminder %>% 
  arrange(desc(lifeExp))

# 2.5 Filtering and arranging 
gapminder %>% 
  filter(year == 1957) %>%
  arrange(desc(pop))

# 2.6 Using mutate to change or create a column 
gapminder %>%
  mutate(lifeExp = lifeExp * 12)
gapminder %>%
  mutate(lifeExpMonths = lifeExp * 12)

# 2.7 Combining filter, mutate, and arrange 
gapminder %>%
  filter(year == 2007) %>%
  mutate(lifeExpMonths = lifeExp * 12) %>%
  arrange(desc(lifeExpMonths))
