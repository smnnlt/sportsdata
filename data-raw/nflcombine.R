# code to prepare `nflcombine` dataset:


cnames <- c("year","name","college","position","height","weight","","sprint",
            "bench","jump_vertical","jump_broad","shuttle","cone")
ctypes <- c("integer","character","factor","factor","double","double",
            "NULL","double","integer","double","double","double","double")
nflcombine <- read.csv("data-raw/nflcombine.csv",
                col.names = cnames,
                colClasses = ctypes)

usethis::use_data(nflcombine, overwrite = TRUE)
