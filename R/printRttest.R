#' @title Print the Rttest Object
#'
#' @param x Rttest object
#' @param ... needed for print to work
#'
#' @return
#'
#' @importFrom kableExtra kable
#'
#' @export print.Rttest
#'
#' @export
#'
#' @examples
print.Rttest <- function(x, ...){
  kable(x$df, padding = 5, digits = 4, caption = "Data From t-Test")
}
