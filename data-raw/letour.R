## code to prepare `letour` dataset:

cnames <- c("","year","name","rank","","distance","pace","","","","team","",
            "time","","","","stages","")
ctypes <- c("NULL","integer","character","integer","NULL","double","double",
            "NULL","NULL", "NULL","character","NULL","integer","NULL","NULL",
            "NULL","double","NULL")
letour <- read.csv("data-raw/letour.csv",
            encoding = "UTF-8",
            col.names = cnames,
            colClasses = ctypes)

# no teams before 1909
letour$team[grep("\\*",letour$team)] <- NA

# find athletes with missing time
missingtime <- letour$time == 0
letour$time[missingtime] <- NA
letour$pace[missingtime] <- NA

usethis::use_data(letour, overwrite = TRUE)
