library(tidyverse)
diamonds
diamonds_E <- diamonds %>% 
  filter(color == "E")

ggplot(diamonds_E, aes(x = price, y = depth)) + geom_point()
 
ggplot(diamonds_E, aes(x = price, y = depth)) + geom_point() + scale_x_log10()

ggplot(diamonds_E, aes(x = price, y = depth)) + geom_point() + scale_x_log10() + scale_y_log10()

ggplot(diamonds_E, aes(x = price, y = depth, color = clarity)) + geom_point() + scale_x_log10()

ggplot(diamonds_E, aes(x = price, y = depth, color = clarity, size = x)) + geom_point() +
  scale_x_log10()

ggplot(diamonds_E, aes(x = price, y = depth)) + geom_point() + scale_x_log10() + facet_wrap(~clarity)
 
ggplot(diamonds, aes(x = price, y = depth, color = clarity, size = table))+
  geom_point() + scale_x_log10() + facet_wrap(~color)
