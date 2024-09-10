install.packages(c("tidyverse", "gapminder", "pacman")) # uncomment if already installed
pacman::p_load(tidyverse, gapminder)
data(gapminder)
head(gapminder)

gapminder_clean <- gapminder %>% 
  dplyr::rename(life_exp = lifeExp, gdp_per_cap = gdpPercap) %>% 
  dplyr::mutate(gdp = pop * gdp_per_cap) %>% 
  dplyr::mutate(if_else(gdp_per_cap < 1085, "Poor", "Rich"))