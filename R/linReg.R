#' Linear regression
#'
#' This function fit a linear regression.
#'
#' @param data Data frame containing Y and X variables.
#' @param save.result Logical parameter indicating if results will be saved.
#' @return Fit a linear regression.
#' @export
#' @importFrom plotly plot_ly kk

linReg <- function(data, save.result = NULL){

  mod <- lm(data$x ~ data$y)

  print(summary(mod))

  plot(data$y~data$x)
  abline(mod)

  # plotly::plot_ly(data, x = ~x, y = ~y, type = "scatter")

  if (!is.null(save.result)){

    out <- data.frame(beta_0 = coef(mod)[1],
                      beta_1 = coef(mod)[2],
                      R2 = summary(mod)$adj.r.squared)

    write.csv(out, "out.csv", row.names = FALSE)

  }

  # res(mod)

}


