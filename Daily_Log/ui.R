#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)

# Define UI for application that draws a histogram
shinyUI(
    navbarPage(
        title = "Journal ViewR",
        theme = shinytheme("flatly"),
        # Application title
        # titlePanel("Journal ViewR"),
        
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
        # mainPanel(
        #     tabsetPanel(
        tabPanel("Table",
            fileInput(
                "files",
                "Select all files of intrest.",
                multiple = TRUE,
                accept = c(".xls",
                           ".xlsx")),
            # textInput(inputId = "filepath",
            #           label = "File Path",
            #           width = '900px',
            #           value = file.path(
            #               "C:",
            #               "Users",
            #               "zmsmith.000",
            #               "New York State Office of Information Technology Services",
            #               "dec.365.SASS - TelecommutingLogs"
            #           )),
            DTOutput('dt_journals')#,
            # tableOutput("contents")
        ),
        tabPanel("App Instructions",
                 tags$iframe(src = 'intro.html', # put in /www
                             width = '100%', height = '800px', 
                             frameborder = 0, scrolling = 'auto')),
        tabPanel("Sync Instructions",
                 tags$iframe(src = 'sync_instructions.html', # put in /www
                             width = '100%', height = '800px', 
                             frameborder = 0, scrolling = 'auto')
                 )
    ) # navbar
) #ShinyUI
