#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  myString <- reactive({
    if(input$name=="") 
       ""
    else 
      paste(input$name, ", next year you will be ", input$age + 1, "!", sep = "")
    })
    
  output$result <- renderText(myString())
})
