# housecats
This R package contains these datasets: bronxhouses and austincats. Each has example scripts to explore the data in very elementary ways.

## Access

Use this code in an R console to access **housecats**.

```
devtools::install_github( "wgfoote/housecats" )
```
## Example scripts

Here is pivot table using the **tidyverse** package to make a query about reasonable prices and square footage in neighborhood. One might imagine visualizers such as in this [shiny workbook](https://wgfoote.shinyapps.io/finalytics-livesession-1/#section-two-plots).

```
library(housecats)
library( tidyverse )
data(bronxhouse)
# explore a bit
house <- bronxhouse
head( house )
summary( house )
house <- house |> select( neighborhood, price, land_sqft)
house <- house |> filter( price > 100)
house <- house |> group_by( neighborhood)
house |> summarize(
  count = n(),
  mean_price = mean( price ),
  mean_land = mean( land_sqft )
)
```

This pivot table inquires about the frequency and mean age of cats under two sets of circumstances.

```
#' # A simple pivot table
#' # How many strays are adopted?
#' # What is their average age?
#' #
library( tidyverse )
library( housecats )
data(austincats)
cats <- austincats |>
select( intake, outcome, outcome_age )
cats <- cats |>
group_by( intake, outcome )
cats |>
summarise(
      count = n(),
      mean = mean(outcome_age)
)
```
