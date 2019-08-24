#' Normal Distribution Curve
#'
#' @param mu mean of distribution
#' @param sigma standard deviation of distribution
#' @param a largest x-value that you want to draw the curve under
#'
#' @return Graph of a Normal distribution curve
#' @export
#'
#' @examples myncurve(mu=3, sigma=4, a=5)
myncurve = function(mu, sigma, a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  prob=pnorm(a,mean=mu,sd=sigma)
  prob=round(prob,4)
  xcurve=seq(-10,a,length=1000)
  ycurve=dnorm(xcurve,mean=mu,sd=sigma)
  polygon(c(-10,xcurve,a),c(0,ycurve,0),col="Red")
  text(x=0, y=0.1, paste("Area = ", prob, sep=" "))
}
