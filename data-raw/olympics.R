# code to prepare `olympics` dataset:

cnames <- c("","name","sex","age","height","weight","nation","noc","games",
            "year","season","city","sport","event","medal")
ctypes <- c("NULL","character","factor","integer","double","double","character",
            "character","factor","integer","factor","character","character",
            "character","factor")
olympics <- read.csv("data-raw/olympics.csv",
              col.names = cnames,
              colClasses = ctypes)
usethis::use_data(olympics, overwrite = TRUE)
