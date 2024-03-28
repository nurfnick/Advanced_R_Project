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
  cat("\nThe Data With column Indicating Which Set It came From\n")
  knitr::kable(x$df, pading = 5, digits = 4, caption = "Data From t-Test")
  cat("\n Signifigance Level Checked\n")
  cat("alpha = ", x$alpha, "\n")
  cat("\n Confidence Interval for xbar - ybar\n")
  x$confidenceInterval
}
