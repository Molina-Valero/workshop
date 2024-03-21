
linReg <- function(data
                   # , save.result = NULL
                   ){

  mod <- lm(data$x ~ data$y)

  print(summary(mod))

  plot(data$y~data$x)
  abline(mod)

  # plotly::plot_ly(data, x = ~x, y = ~y, type = "scatter")
  #
  # if (save.result){
  #
  #   write.csv(data, "data.csv", row.names = FALSE)
  #
  # }

}


