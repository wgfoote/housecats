#' A Cat Function
#'
#' @description
#' This function allows you to express your love of cats.
#'
#' @details
#' Of all God’s creatures, there is only one that cannot be made slave of the lash. That one is the cat. If man could be crossed with the cat it would improve the man, but it would deteriorate the cat. - Mark Twain (1835-1910)
#' @param love Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#' cat_function(TRUE)
#' cat_function(FALSE)
cat_function <- function(love=TRUE){
  if(love==TRUE){
    print("I love cats!")
  }
  else {
    print("I'm allergic to all felinaforms.")
  }
}
