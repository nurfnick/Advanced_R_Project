#'  A constructor function for t tests
#'
#' @param x vector of data
#' @param y vector of data
#' @param alpha signifigance level between 0 and 1
#'
#' @return
#' @export
#'
#' @examples
#'  set.seed(21);x <-rnorm(30,5,2);
#'  set.seed(23); y<- rnorm(40, 3,2);
#'  alpha <- 0.05
#'  obj <- myttest(x = x, y = y, alpha = 0.05)
#'  class(obj)
#'  print(obj)

myttest <-function(x,y,alpha = 0.05){
  tt<-t.test(x,y,var.equal = TRUE, conf.level=1-alpha)
  data <- vector(mode = "numeric", length = length(x) + length(y))
  v <- vector(mode = "list", length = length(data))

  v <- rep(c("x","y"), c(length(x),length(y)))
  data <- c(x,y)
  df = data.frame("data" = data, "v" = v)
  confInt <- c(tt[["conf.int"]][1],tt[["conf.int"]][2])
  pval <- c(tt[["p.value"]])
  lst <- list("df" = df, "alpha" = alpha, "confidenceInterval" = confInt, "pvalue" = pval)
  class(lst)<-"Rttest"# New class
  lst
}
