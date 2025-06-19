#' inputs UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_inputs_ui <- function(id) {
  ns <- NS(id)
  tagList(
 
  )
}
    
#' inputs Server Functions
#'
#' @noRd 
mod_inputs_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_inputs_ui("inputs_1")
    
## To be copied in the server
# mod_inputs_server("inputs_1")
