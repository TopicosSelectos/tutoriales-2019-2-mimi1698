library(tidyverse)
diamonds

diamonds %>% 
  filter(cut == "Ideal")

diamonds %>% 
  filter(cut == "Premium", color == "E")

diamonds %>% 
  arrange(price)
diamonds %>% 
  arrange(desc(price))

diamonds %>% 
  filter(table == 55) %>%
  arrange(desc(price))


diamonds %>%
  mutate(price = price / 100)
diamonds %>%
  mutate(priceDivided100 = price / 100)

diamonds %>%
  filter(color == "E") %>%
  mutate(priceDivided100 = price / 100) %>%
  arrange(desc(priceDivided100))