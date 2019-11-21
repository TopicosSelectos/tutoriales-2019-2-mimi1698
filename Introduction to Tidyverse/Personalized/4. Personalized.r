library(tidyverse)
diamonds %>% 
  summarize(medianDepth = median(depth))

diamonds %>%
  filter(carat == .29) %>%
  summarize(medianDepth = median(depth))

diamonds %>%
  filter(carat == .29) %>%
  summarize(medianDepth = median(depth), maxPrice = max(price))

diamonds %>% 
  group_by(carat) %>%
  summarize(medianDepth = median(depth), maxPrice = max(price))

diamonds %>% 
  group_by(clarity) %>% 
  summarize(medianDepth = median(depth), maxPrice = max(price))

diamonds %>% 
  group_by(carat, clarity) %>% 
  summarize(medianDepth = median(depth), maxPrice = max(price))

by_carat <- diamonds %>% 
  group_by(carat) %>%
  summarize(medianDepth = median(depth), maxPrice = max(price))
ggplot(by_carat, aes(x = carat, y = medianDepth)) + geom_point()

by_carat_clarity <- diamonds %>%
  group_by(carat, clarity) %>%
  summarize(medianPrice = median(price))
by_year_continent
ggplot(by_carat_clarity, aes(x = carat, y = medianPrice, color = clarity)) + geom_point()

by_clarity_c29 <- diamonds %>%
  filter(carat == 0.29) %>%
  group_by(clarity) %>%
  summarize(medianDepth = median(depth), medianPrice = median(price))
ggplot(by_clarity_c29, aes(x = medianDepth, y = medianPrice, color = clarity)) + geom_point()