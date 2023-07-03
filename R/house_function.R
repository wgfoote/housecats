#' A Housing Function
#'
#' @description
#' This function allows you to indicate your mode of residence.
#'
#' @details
#' It does not store anything and does precious little else than echo your housing status.
#' @param live Do you live in a house? Defaults to TRUE.
#' @return The answer to your query
#' @keywords houses
#' @export
#' @examples
#' house_function(TRUE)
#' house_function(FALSE)
house_function <- function(live=TRUE){
  if(live==TRUE){
    print("I live in a house!")
  }
  else {
    print("I live elsewhere, usually some sort of cave.")
  }
}
