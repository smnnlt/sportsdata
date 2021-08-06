# code to prepare `amstelgold` dataset:
library(dplyr)

amstelgold <- read.csv("data-raw/amstelgold.csv") |>
  select(!c(total_elevation,timer_time,outlier,moving,time,resting,distance)) |>
  mutate(athlete = as.factor(athlete))

usethis::use_data(amstelgold, overwrite = TRUE)
