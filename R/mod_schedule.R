#' schedule UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_schedule_ui <- function(id) {
  ns <- NS(id)
  tagList(
 
  )
}
    
#' schedule Server Functions
#'
#' @noRd 
mod_schedule_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_schedule_ui("schedule_1")
    
## To be copied in the server
# mod_schedule_server("schedule_1")
