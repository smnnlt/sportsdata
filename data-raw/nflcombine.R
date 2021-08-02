# code to prepare `nflcombine` dataset:


cnames <- c("year","name","college","position","height","weight","","sprint",
            "bench","jump_vertical","jump_broad","shuttle","cone")
ctypes <- c("integer","character","factor","factor","double","double",
            "NULL","double","integer","double","double","double","double")
nflcombine <- read.csv("data-raw/nflcombine.csv",
                col.names = cnames,
                colClasses = ctypes)

nflcombine$weight <- purrr::map_dbl(nflcombine$weight,lbs_to_kg)
nflcombine$height <- round(nflcombine$height*2.54,0)
nflcombine$jump_vertical <- round(nflcombine$jump_vertical*2.54,0)
nflcombine$jump_broad <- round(nflcombine$jump_broad*2.54,0)

usethis::use_data(nflcombine, overwrite = TRUE)
