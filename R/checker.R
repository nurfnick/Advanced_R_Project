new_Rttest <- function(df, alpha, confInt, pval){
  stopifnot(is.data.frame(df))
  stopifnot(is.double(confInt))
  stopifnot(is.double(alpha))
  stopifnot(is.double(pval))
}


