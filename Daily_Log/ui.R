#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Daily Log"),

    # Sidebar with a slider input for number of bins
    # sidebarLayout(
        # sidebarPanel(
        #     sliderInput("bins",
        #                 "Number of bins:",
        #                 min = 1,
        #                 max = 50,
        #                 value = 30)
        # ),

        # Show a plot of the generated distribution
    mainPanel(
        textInput(inputId = "filepath",
                  label = "File Path",
                  width = '900px',
                  value = file.path(
                      "C:",
                      "Users",
                      "zmsmith.000",
                      "New York State Office of Information Technology Services",
                      "dec.365.SASS - TelecommutingLogs"
                  )),
        DTOutput('dt_journals')
        )
    # )
))
