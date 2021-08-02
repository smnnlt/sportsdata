# code to prepare `swimstars` dataset:

swimstars <- data.frame(
  name = c("Michael Phelps","Katie Ledecky","Michael Groß","Dawn Fraser","Jenny Thompson"),
  sex = factor(c("male","female","male","female","female"),
               levels = c("female","male")),
  nation = factor(c("USA","USA","Germany","Australia","USA"),
                  levels = c("Australia","Germany","USA")),
  olympics = as.factor(c(4,3,2,3,4)),
  medals = c(23,10,6,8,12)
)

usethis::use_data(swimstars, overwrite = TRUE)
