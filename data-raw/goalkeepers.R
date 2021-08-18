# code to prepare `goalkeepers` dataset:

library(purrr)
library(dplyr)

cnames <- c("","name","age","","nation","","overall","potential","club","",
            "value","","","foot","","","","","","","","number","","","",
            "height","weight","crossing","finishing","heading","passing_short",
            "volley","dribbling","curve","freekick","passing_long","control",
            "acceleration","sprint","agility","reaction","balance","power",
            "jump","stamina","strength","shots_long","aggression",
            "interceptions","positioning","vision","penalty","composure","",
            "tackling_stand","tackling_slide","gk_diving","gk_handling",
            "gk_kicking","gk_positioning","gk_reflexes","position","")
ctypes <- c("NULL","character","integer","NULL","character","NULL","double",
            "double","character","NULL","character","NULL","NULL","factor",
            "NULL","NULL","NULL","NULL","NULL","NULL","NULL","double","NULL",
            "NULL","NULL","character","character","double","double","double",
            "double","double","double","double","double","double","double",
            "double","double","double","double","double","double","double",
            "double","double","double","double","double","double","double",
            "double","double","NULL","double","double","double","double",
            "double","double","double","factor","NULL")
fifa17 <- read.csv("data-raw/fifa17.csv",
            encoding = "UTF-8",
            col.names = cnames,
            colClasses = ctypes)

fifavalue <- function(x) {
  x <- sub("€","",x)
  if (grepl("M",x)) {
    x <- sub("M","",x)
    x <- as.numeric(x)
  } else if (grepl("K",x)) {
    x <- sub("K","",x)
    x <- 0.001 * as.numeric(x)
  } else {
    x <- 0
  }
  x
}
fifa17$value <- purrr::map_dbl(fifa17$value,fifavalue)

inches_to_cm <- function(value) {
  x <- strsplit(value,"'")[[1]]
  x <- round((as.numeric(x[[1]])*12+as.numeric(x[[2]]))*2.54,0)
  x
}

fifa17$height <- purrr::map_dbl(fifa17$height, inches_to_cm)
fifa17$weight <- purrr::map_dbl(fifa17$weight, lbs_to_kg)

fifa17$foot <- factor(fifa17$foot,
                 levels = c("Left","Right"),
                 labels = c("left","right")
               )
fifa17$defawareness <- rep.int(NA,nrow(fifa17))
fifa17$year <- rep.int(2017,nrow(fifa17))
fifa21$year <- rep.int(2021,nrow(fifa21))

fifadev <- rbind(fifa17,fifa21) |>
  filter(position == "GK") |>
  filter(overall >= 70) |>
  filter(value > 2) |>
  filter(nation == "Spain")

du <- fifadev$name[duplicated(fifadev$name)]

goalkeepers <- fifadev[fifadev$name %in% du,] |>
  select(-(crossing:tackling_slide)) |>
  select(-(defawareness:position)) |>
  mutate(year = as.factor(year))

usethis::use_data(goalkeepers, overwrite = TRUE)
