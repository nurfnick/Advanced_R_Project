#'  A constructor function for t tests
#'
#' @param x vector of data
#' @param y vector of data
#' @param alpha significance level between 0 and 1 5% by default
#'
#' @return list that include original data, alpha, ci, and pvalue
#'
#' @importFrom stats var.test t.test
#'
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
  data <- vector(mode = "numeric", length = length(x) + length(y)) #setting up the data for later
  v <- vector(mode = "list", length = length(data))#getting a list of which variable is which
  tt<-t.test(x,y,var.equal = TRUE, conf.level=1-alpha) #do the test
  v <- rep(c("x","y"), c(length(x),length(y))) #which value is which
  data <- c(x,y) #add the values
  df = data.frame("data" = data, "v" = v) #add everything to the df
  confInt <- c(tt[["conf.int"]][1],tt[["conf.int"]][2]) #get both values of the confidence interval
  pval <- c(tt[["p.value"]]) #get the p value
  lst <- list("df" = df, "alpha" = alpha, "confidenceInterval" = confInt, "pvalue" = pval) #add it all to a list
  class(lst)<-"Rttest"# New class
  lst #return the list
}
