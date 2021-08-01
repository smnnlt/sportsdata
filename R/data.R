#' All results from first and second German Bundesliga
#'
#' A dataset containing the results of all Bundesliga games.
#'
#' @format A data frame with 36962 rows and 14 variables:
#' \describe{
#'   \item{season_from}{starting year of the season}
#'   \item{season_to}{ending year of the season}
#'   \item{matchday}{number of the matchday within each season}
#'   \item{day}{weekday of the game}
#'   \item{date}{date of the game}
#'   \item{team_home}{name of the home team}
#'   \item{team_guest}{name of the guest team}
#'   \item{score_home}{goals scored by the home team}
#'   \item{score_guest}{goals scored by the guest team}
#'   \item{score_half_home}{goals scored by the home team until halftime}
#'   \item{score_half_guest}{goals scored by the guest team until halftime}
#'   \item{points_home}{points achieved by the home team}
#'   \item{points_home}{points achieved by the guest team}
#'   \item{league}{either first or second division}
#' }
#' @source \url{https://github.com/camminady/AllBundesligaGamesEver}
"bundesliga"
