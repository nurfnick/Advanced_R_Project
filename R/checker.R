#' Validator for class
#'
#' @param df
#' @param alpha
#' @param confInt
#' @param pval
#'
#' @return
#' @export
#'
#' @examples
new_Rttest <- function(x){
  stopifnot(is.data.frame(x$df))
  stopifnot(is.double(x$confidenceInterval))
  stopifnot(is.double(x$alpha))
  stopifnot(is.double(x$pvalue))
}


