#' Sheltered Cats
#'
#' The status of cats at an animal shelter.
#'
#' @details
#' The Austin Tx Animal Center records intakes and outcomes from Oct, 1st 2013 to present for several species of animals. Intakes represent the status of animals as they arrive at the Animal Center. All animals receive a unique Animal ID during intake. Annually over 90% of animals entering the center, are adopted, transferred to rescue or returned to their owners. Here are the stories of the cats. (Inspired by Richard McElreath's AustinCats.csv in the rethinking R package.)
#'
#' @format A data frame with 5867 observations of 10 variables
#' @section Usage: data(austincats)
#' @section Variables:
#' \describe{
#'    \item{id}{chr unique animal IDs}
#'    \item{outcome_date}{chr  "8/16/2022 11:42" release date}
#'    \item{birth_date}{chr  "6/21/2012 0:00"}
#'    \item{outcome}{chr  "Adoption"}
#'    \item{outcome_age}{num  10.15 and should be the difference between outcome_date and birthdate}
#'    \item{intake_date}{chr  "4/8/2019 18:24"}
#'    \item{intake}{chr "Stray"}
#'    \item{sex}{chr "Spayed Female"}
#'    \item{breed}{chr "Devon Rex"}
#'    \item{color}{chr "Torbie"}
#' }
#'
#' @return The answer to your query
#' @docType data
#'
#'
#' @source <https://data.austintexas.gov/Health-and-Community-Services/Austin-Animal-Center-Outcomes/9t4d-g238>
#' @import tidyverse
#' @examples
#' # A simple pivot table
#' # How many strays are adopted?
#' # What is their average age?
#' #
#' library( tidyverse )
#' library( housecats )
#' data(austincats)
#' cats <- austincats |>
#' select( intake, outcome, outcome_age )
#' cats <- cats |>
#' group_by( intake, outcome )
#' cats |>
#' summarise(
#' count = n(),
#' mean = mean(outcome_age)
#' )
"austincats"
