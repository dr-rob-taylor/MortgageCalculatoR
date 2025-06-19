#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic

  output$amortization <- renderPlot({
    shinipsum::random_ggplot()
  })

  output$amorttable <- DT::renderDT({
    shinipsum::random_DT(10, 5)
  })

  output$payments <- renderText({
    shinipsum::random_text(nwords = 1)
  })

  output$interest <- renderText({
    shinipsum::random_text(nwords = 1)
  })

  output$payoff <- renderText({
    shinipsum::random_text(nwords = 1)
  })
}
