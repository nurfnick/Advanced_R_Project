#' Print the Rttest Object
#'
#' @param x Rttest object
#' @param ... needed for print to work
#'
#' @return
#' @export print.Rttest
#'
#' @export
#'
#' @examples
print.Rttest <- function(x, ...){
  print(x$df)
}
