lbs_to_kg <- function(value) {
  x <- sub("lbs","",value)
  round(as.numeric(x) * 0.4536,1)
}
