#' Title
#'
#' @param n
#' @param mean
#' @param sd
#'
#' @return
#' @export
#'
#' @examples
myci = function(n=30,mean=10,sd=5) {
  x = rnorm(n,mean,sd)
  t.test(x,conf.level=0.95)
}
