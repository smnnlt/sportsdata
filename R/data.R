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
#'   \item{points_guest}{points achieved by the guest team}
#'   \item{league}{either first or second division}
#' }
#' @source \url{https://github.com/camminady/AllBundesligaGamesEver}
"bundesliga"

#' All riders of the Tour de France
#'
#' A dataset containing the individual results for all riders of the Tour de
#' France.
#'
#' @format A data frame with 9452 rows and 8 variables:
#' \describe{
#'   \item{year}{year of holding}
#'   \item{name}{name of the rider}
#'   \item{rank}{final position in classement generale}
#'   \item{distance}{total distance in km}
#'   \item{pace}{individual average pace in km/h}
#'   \item{team}{name of the rider's team}
#'   \item{time}{total time in seconds}
#'   \item{stages}{number of stages}
#' }
#' @source \url{https://github.com/camminady/LeTourDataSet}
"letour"

#' All athletes competing in the Olympic Games
#'
#' A dataset containing all athletes competing in any event of the modern
#' Olympic Games.
#'
#' @format A data frame with 271116 rows and 14 variables:
#' \describe{
#'   \item{name}{name of the athlete}
#'   \item{sex}{sex of the athlete}
#'   \item{age}{age in years}
#'   \item{height}{body height in cm}
#'   \item{weight}{bodyweight in kg}
#'   \item{nation}{nationality}
#'   \item{noc}{National Olympic Commitee to compete for}
#'   \item{games}{location and year of the Olympic Games}
#'   \item{year}{year of the Olympic Games}
#'   \item{season}{either `Summer` or `Winter`}
#'   \item{city}{host city}
#'   \item{sport}{type of sport}
#'   \item{event}{event to participate}
#'   \item{medal}{which medal was won}
#' }
#' @source \url{https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results}
"olympics"


#' Data from NFL combines and pro days
#'
#' A dataset containing anthropometric and physical measures from NFL combine
#' and pro days since 1987.
#'
#' @format A data frame with 13230 rows and 12 variables:
#' \describe{
#'   \item{year}{year of the recording}
#'   \item{name}{name of the athlete}
#'   \item{college}{college of the athlete}
#'   \item{position}{position on field}
#'   \item{height}{body height in inches}
#'   \item{weight}{bodyweight in lbs}
#'   \item{sprint}{time to cover 40 yrds in s ('Forty Yard Dash')}
#'   \item{bench}{number of repetition for 225lb bench press('Bench Press')}
#'   \item{jump_vertical}{maximal height of touching during a vertical jump in
#'     inches ('Vertical Leap')}
#'   \item{jump_broad}{length of standing long jump in inches ('Broad Jump')}
#'   \item{shuttle}{time to cover a short agility test in s ('20-yard Shuttle
#'     Drill')}
#'   \item{cone}{duration of a change-of-direction and reaction test ('Three
#'     Cone Drill')}
#' }
#' @source \url{https://github.com/josedv82/public_sport_science_datasets}
"nflcombine"
