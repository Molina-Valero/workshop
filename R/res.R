#' Residuals
#'
#' This check the residuals of the linear regression.
#'
#' @param mod Linear regression model fit.
#' @return Residuals normality test.
#' @noRd


res <- function(mod){

  shapiro.test(mod$residuals)

}


