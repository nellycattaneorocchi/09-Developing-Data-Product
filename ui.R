#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that guess the age you will have next year.
shinyUI(fluidPage(

    # Application title
    titlePanel("Crystal ball"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            a("Click HERE to open the help file", href='README.md'), 
            textInput("name","What's your name?", value=""),
            sliderInput("age", "What's your age?", value=0, min=1, max=99),
            submitButton("Go!")
        ),
        
        # Show the age in one year time
        mainPanel(textOutput("result"))
    )
))

# href='https://github.com/nellycattaneorocchi/Developing-Data-Product/blob/master/README.md