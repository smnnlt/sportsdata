# code to prepare `fifa21` dataset:


cnames <- c("","name","age","","nation","","overall","potential","club","","value","","",
            "foot","","","","","","","","number","","","","height","weight",
            "crossing","finishing","heading","passing_short","volley",
            "dribbling","curve","freekick","passing_long","control",
            "acceleration","sprint","agility","reaction","balance","power",
            "jump","stamina","strength","shots_long","aggression",
            "interceptions","positioning","vision","penalty","composure","",
            "tackling_stand","tackling_slide","gk_diving","gk_handling",
            "gk_kicking","gk_positioning","gk_reflexes","position","","",
            "defawareness")
ctypes <- c("NULL","character","integer","NULL","character","NULL","double",
            "double","character","NULL","character","NULL","NULL","factor","NULL",
            "NULL","NULL","NULL","NULL","NULL","NULL","double","NULL","NULL",
            "NULL","character","character","double","double","double",
            "double","double","double","double","double","double","double",
            "double","double","double","double","double","double","double",
            "double","double","double","double","double","double","double",
            "double","double","NULL","double","double","double","double",
            "double","double","double","factor","NULL","NULL","double")
fifa21 <- read.csv("data-raw/fifa21.csv",
            encoding = "UTF-8",
            col.names = cnames,
            colClasses = ctypes)

usethis::use_data(fifa21, overwrite = TRUE)
