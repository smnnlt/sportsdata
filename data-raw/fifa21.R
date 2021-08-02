# code to prepare `fifa21` dataset:

cnames <- c("","name","age","","nation","","overall","potential","club","",
            "value","","","foot","","","","","","","","number","","","",
            "height","weight","crossing","finishing","heading","passing_short",
            "volley","dribbling","curve","freekick","passing_long","control",
            "acceleration","sprint","agility","reaction","balance","power",
            "jump","stamina","strength","shots_long","aggression",
            "interceptions","positioning","vision","penalty","composure","",
            "tackling_stand","tackling_slide","gk_diving","gk_handling",
            "gk_kicking","gk_positioning","gk_reflexes","position","","",
            "defawareness")
ctypes <- c("NULL","character","integer","NULL","character","NULL","double",
            "double","character","NULL","character","NULL","NULL","factor",
            "NULL","NULL","NULL","NULL","NULL","NULL","NULL","double","NULL",
            "NULL","NULL","character","character","double","double","double",
            "double","double","double","double","double","double","double",
            "double","double","double","double","double","double","double",
            "double","double","double","double","double","double","double",
            "double","double","NULL","double","double","double","double",
            "double","double","double","factor","NULL","NULL","double")
fifa21 <- read.csv("data-raw/fifa21.csv",
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
fifa21$value <- purrr::map_dbl(fifa21$value,fifavalue)

inches_to_cm <- function(value) {
  x <- strsplit(value,"'")[[1]]
  x <- round((as.numeric(x[[1]])*12+as.numeric(x[[2]]))*2.54,0)
  x
}

fifa21$height <- map_dbl(fifa21$height, inches_to_cm)

lbs_to_kg <- function(value) {
  x <- sub("lbs","",value)
  round(as.numeric(x) * 0.4536,1)
}

fifa21$weight <- map_dbl(fifa21$weight, lbs_to_kg)

fifa21$foot <- factor(fifa21$foot,
                 levels = c("Left","Right"),
                 labels = c("left","right")
               )

usethis::use_data(fifa21, overwrite = TRUE)
