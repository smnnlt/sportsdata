# code to prepare `rioathletics` dataset:
library(dplyr)

evnts <- c(
  "Athletics Women's High Jump","Athletics Men's High Jump",
  "Athletics Women's 5,000 metres","Athletics Men's 5,000 metres",
  "Athletics Women's Shot Put","Athletics Men's Shot Put")

rioathletics <- olympics |>
  filter(year == 2016) |>
  filter(event %in% evnts) |>
  filter(!is.na(medal)) |>
  select(-(noc:sport)) |>
  mutate(event = sub("Athletics Women's","",event)) |>
  mutate(event = sub("Athletics Men's","",event))

usethis::use_data(rioathletics, overwrite = TRUE)
