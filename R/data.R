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
#'   \item{height}{body height in cm}
#'   \item{weight}{bodyweight in kg}
#'   \item{sprint}{time to cover 40 yrds in s ('Forty Yard Dash')}
#'   \item{bench}{number of repetition for 225lb bench press('Bench Press')}
#'   \item{jump_vertical}{maximal height of touching during a vertical jump in
#'     cm ('Vertical Leap')}
#'   \item{jump_broad}{length of standing long jump in cm ('Broad Jump')}
#'   \item{shuttle}{time to cover a short agility test in s ('20-yard Shuttle
#'     Drill')}
#'   \item{cone}{duration of a change-of-direction and reaction test in s
#'   ('Three Cone Drill')}
#' }
#' @source \url{https://github.com/josedv82/public_sport_science_datasets}
"nflcombine"

#' FIFA21 statistics for all players
#'
#' A dataset containing the FIFA21 statistics for all players in the game.
#'
#' @format A data frame with 17108 rows and 46 variables:
#' \describe{
#'   \item{name}{name of the player}
#'   \item{age}{age in years}
#'   \item{nation}{nation of the player}
#'   \item{overall}{overall rating}
#'   \item{potential}{potential rating}
#'   \item{club}{current club playing for}
#'   \item{value}{player value in €M}
#'   \item{foot}{preferred foot}
#'   \item{number}{jersey number}
#'   \item{height}{body length in cm}
#'   \item{weight}{bodyweight in kg}
#'   \item{crossing}{crossing rating}
#'   \item{finishing}{finishing rating}
#'   \item{heading}{heading accuracy rating}
#'   \item{passing_short}{short passing rating}
#'   \item{volley}{volleys rating}
#'   \item{dribbling}{dribbling rating}
#'   \item{curve}{curve rating}
#'   \item{freekick}{freekick accuracy rating}
#'   \item{passing_long}{long passing rating}
#'   \item{control}{ball control rating}
#'   \item{acceleration}{acceleration rating}
#'   \item{sprint}{sprint speed rating}
#'   \item{agility}{agility rating}
#'   \item{reaction}{reactions rating}
#'   \item{balance}{balance rating}
#'   \item{power}{shot power rating}
#'   \item{jump}{jumping rating}
#'   \item{stamina}{stamina rating}
#'   \item{strength}{strength rating}
#'   \item{shots_long}{long shot rating}
#'   \item{aggression}{aggression rating}
#'   \item{interceptions}{interceptions rating}
#'   \item{positioning}{positioning rating}
#'   \item{vision}{vision rating}
#'   \item{penalty}{penalties rating}
#'   \item{composure}{composure rating}
#'   \item{tackling_stand}{standing tackle rating}
#'   \item{tackling_slide}{sliding tackling rating}
#'   \item{gk_diving}{diving rating (goal keeper)}
#'   \item{gk_handling}{handling rating (goal keeper)}
#'   \item{gk_kicking}{kicking rating (goal keeper)}
#'   \item{gk_positioning}{positioning rating (goal keeper)}
#'   \item{gk_reflexes}{reflexes rating (goal keeper)}
#'   \item{position}{best position}
#'   \item{defawareness}{defensive awareness rating}
#' }
#' @source \url{https://www.kaggle.com/bryanb/fifa-player-stats-database}
"fifa21"

#' Some of the best swimmers in history
#'
#' A small example dataset containing information for some of the most famous
#' and successful swimmers in the world.
#'
#' @format A data frame with 5 rows and 5 variables:
#' \describe{
#'   \item{name}{name of the swimmer}
#'   \item{sex}{sex of the swimmer}
#'   \item{nation}{nationality of the swimmer}
#'   \item{olympics}{number of Olympic Games participated}
#'   \item{medals}{number of Olympic medals won}
#' }
"swimstars"

#' Contestants in some Rio 2016 Olympic athletic competitions
#'
#' A dataset containing information for athletes competing in the shot put,
#' high jump and 5000m running events at the Rio 2016 Olympic Games.
#'
#' @format A data frame with 233 rows and 8 variables:
#' \describe{
#'   \item{name}{name of the athlete}
#'   \item{sex}{sex of the athlete}
#'   \item{age}{age of the athlete in years}
#'   \item{height}{body length in cm}
#'   \item{weight}{bodyweight in kg}
#'   \item{nation}{nationality of the athlete}
#'   \item{event}{event in which the medal was won}
#'   \item{medal}{type of medal won}
#' }
"rioathletics"


#' All gymnasts competing in the Rio 2016 Olympic Games.
#'
#' A dataset containing information on athletes competing in the gymnastics
#' events at the Rio 2016 Olympic Games.
#'
#' @format A data frame with 196 rows and 6 variables:
#' \describe{
#'   \item{name}{name of the athlete}
#'   \item{sex}{sex of the athlete}
#'   \item{age}{age of the athlete in years}
#'   \item{height}{body length in cm}
#'   \item{weight}{bodyweight in kg}
#'   \item{nation}{nationality of the athlete}
#' }
"gymnastics"

#' Development of Spanish football goalkeepers according to FIFA ratings
#'
#' A dataset containing FIFA scores for 21 Spanish goalkeepers with an overall rating
#' greater or equal to 70 in both years 2017 and 2021.
#'
#' @format A data frame with 42 rows and 17 variables:
#' \describe{
#'   \item{name}{name of the player}
#'   \item{age}{age in years}
#'   \item{nation}{nation of the player}
#'   \item{overall}{overall rating}
#'   \item{potential}{potential rating}
#'   \item{club}{current club playing for}
#'   \item{value}{player value in €M}
#'   \item{foot}{preferred foot}
#'   \item{number}{jersey number}
#'   \item{height}{body length in cm}
#'   \item{weight}{bodyweight in kg}
#'   \item{gk_diving}{diving rating}
#'   \item{gk_handling}{handling rating}
#'   \item{gk_kicking}{kicking rating}
#'   \item{gk_positioning}{positioning rating}
#'   \item{gk_reflexes}{reflexes rating}
#'   \item{year}{year of the data, either 2017 or 2021}
#' }
"goalkeepers"
