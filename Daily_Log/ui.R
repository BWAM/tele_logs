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
        tabPanel("Table",
            fileInput(
                "files",
                "Select all files of intrest.",
                multiple = TRUE,
                accept = c(".xls",
                           ".xlsx")),
            DTOutput('dt_journals')#,
            # tableOutput("contents")
        ),
        tabPanel("App Instructions",
                 tags$iframe(src = 'intro.html', # put in /www
                             width = '60%', height = '800px', 
                             frameborder = 0, scrolling = 'auto')
                 ),
        tabPanel("Sync Instructions",
                 tags$iframe(src = 'sync_instructions.html', # put in /www
                             width = '60%', height = '800px', 
                             frameborder = 0, scrolling = 'auto')
                 )
    ) # navbar
) #ShinyUI
