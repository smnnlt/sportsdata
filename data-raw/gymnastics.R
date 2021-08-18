# code to prepare `gymnastics` dataset:
library(dplyr)

gymnastics <- olympics |>
  filter(year == 2016) |>
  filter(sport == "Gymnastics") |>
  select(-(noc:medal)) |>
  unique()

usethis::use_data(gymnastics, overwrite = TRUE)
