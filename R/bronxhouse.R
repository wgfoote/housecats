#' Prices of Houses in the Bronx
#'
#' A dataset containing the prices and other attributes of residential and some commercial houses in the Bronx 2022-2023.
#'
#' @section Usage: data(bronxhouse)
#'
#' @format A data frame with 6464 observations of  10 variables
#' @section Variables:
#' \describe{
#'    \item{neighborhood}{ chr "Bathgate"}
#'    \item{class}{ chr "01 ONE FAMILY DWELLINGS"}
#'    \item{zip}{ num  10457}
#'    \item{residential_units}{ num 1 1 1 2}
#'    \item{commercial_units}{ num 0 0 0 1 0}
#'    \item{land_sqft}{ num 4750}
#'    \item{building_sqft}{ num 3167}
#'    \item{year_built}{ num 1899}
#'    \item{price}{ num 980000}
#'    \item{date}{ chr "9/8/2022"}
#' }
#'
#' @docType data
#'
#' @source <https://www.nyc.gov/site/finance/taxes/property-rolling-sales-data.page>
#'
#' @import tidyverse
#' @examples
#' library(housecats)
#' library( tidyverse )
#' data(bronxhouse)
#' # explore a bit
#' house <- bronxhouse
#' head( house )
#' summary( house )
#' house <- house |> select( neighborhood, price, land_sqft)
#' house <- house |> filter( price > 100)
#' house <- house |> group_by( neighborhood)
#' house |> summarize( count = n(), mean_price = mean( price ), mean_land = mean( land_sqft ) )
"bronxhouse"
