# 3.1 Variable assignment 
library(tidyverse)
library(gapminder)
gapminder_1952 <- gapminder %>% 
  filter(year == 1952)

# 3.2 Comparing population and GDP per capita 
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) + geom_point()

# 3.3 Comparing population and life expectancy 
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) + geom_point()

# 3.4 Puttting the x-axis on a log scale 
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) + geom_point() + scale_x_log10()

# 3.5 Putting the x- and y- axes on a log scale 
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) + geom_point() + scale_x_log10() + scale_y_log10()

# 3.6 Adding color to a scatter plot 
ggplot(gapminder_1952, aes(x = pop, y = lifeExp, color = continent)) + geom_point() + scale_x_log10()

# 3.7 Adding size and color to a plot 
ggplot(gapminder_1952, aes(x = pop, y = lifeExp, color = continent, size = gdpPercap)) + geom_point() +
scale_x_log10()

# 3.8 Creating a subgraph for each continent 
ggplot(gapminder_1952, aes(x = pop, y = lifeExp,)) + geom_point() + scale_x_log10() + facet_wrap(~continent)

# 3.9 Faceting by year 
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent, size = pop))+
  geom_point() + scale_x_log10() + facet_wrap(~year)