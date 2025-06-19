#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),

    # Your application UI logic
    shiny::fluidPage(
      theme = bslib::bs_theme(version = 5, bootswatch = "flatly"),

      titlePanel("Mortgage Calculator (Prototype)"),

      sidebarLayout(
        sidebarPanel(
          numericInput( inputId = "principle", label = "Principal", value = 0, min = 0),  # placeholder for inputs
          numericInput( inputId = "interest", label = "Interest Rate (%)", value = 4, min = 0),
          width = 3
        ),

        mainPanel(
          fluidRow(
            column(
              width = 4,
              h4("Monthly Payment"),
              textOutput("payments")
            ),
            column(
              width = 4,
              h4("Total Interest"),
              textOutput("interest")
            ),
            column(
              width = 4,
              h4("Payoff Date"),
              textOutput("payoff")
            )
          ),
          hr(),
          fluidRow(
            column(
              width = 12,
              h4("Amortization Plot"),
              plotOutput("amortization")
            )
          ),
          hr(),
          fluidRow(
            column(
              width = 12,
              h4("Amortization Table"),
              DT::DTOutput("amorttable")
            )
          ),
          width = 9
        )
      )
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "MortgageCalculatoR"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
