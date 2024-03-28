#' @title Print the Rttest Object
#'
#' @param x Rttest object
#' @param ... needed for print to work
#'
#' @return
#'
#' @importFrom knitr kable
#' @importFrom kableExtra kable_styling
#' @importFrom magrittr %>%
#'
#' @export print.Rttest
#'
#' @export
#'
#' @examples
print.Rttest <- function(x, ...){
  cat("\nThe Data With column Indicating Which Set It came From\n")
  print(kable(x$df, pading = 5, digits = 4, caption = "Data From t-Test") %>%
          kable_styling(bootstrap_options = c("striped","hover"),
                        full_width = FALSE))
                        #, position = "float_right"))this floated past all the rest of the text
  cat("\n Signifigance Level Checked\n")
  cat("alpha = ", x$alpha, "\n")
  cat("\n Confidence Interval for xbar - ybar\n")
  print(x$confidenceInterval)
  cat("\n p Value of t-Test\n")
  print(x$pvalue)
}
