# code to prepare `amstel19` dataset:
library(dplyr)

amstel19 <- read.csv("data-raw/amstel19.csv")
amstel19 <- amstel19 |>
  select(!c(total_elevation,timer_time,outlier,moving,time,resting,distance)) |>
  mutate(athlete = as.factor(athlete))

usethis::use_data(amstel19, overwrite = TRUE)
