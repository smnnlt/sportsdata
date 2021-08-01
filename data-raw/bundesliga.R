# code to prepare `bundesliga` dataset:

cnames <- c("X1","season_from","season_to","matchday","day","date","X2",
            "team_home","team_guest","X3","X4","score_home","score_guest",
            "score_half_home","score_half_guest","points_home","points_guest",
            "X5","X6","league")
ctypes <- c("NULL","integer","integer","integer","factor","Date","NULL","character",
            "character","NULL","NULL","integer","integer","integer","integer",
            "integer","integer","NULL","NULL","factor")
bundesliga <- read.csv2("data-raw/bundesliga.csv",
                encoding = "UTF-8",
                col.names = cnames,
                colClasses = ctypes)

usethis::use_data(bundesliga, overwrite = TRUE)
