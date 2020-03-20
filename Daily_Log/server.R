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
shinyServer(function(input, output, session) {

# end_session -------------------------------------------------------------
    # Automatically stop session once browser window is closed.
    # Appears to work but when editing the ui.R errors will beging to appear in
    # to console.
    session$onSessionEnded(stopApp)


# list files ----------------------------------------------------------------
    observeEvent(input$filepath, {
        file.list <- list.files(input$filepath) %>%
            .[grepl(".xls", .)] 
        
        journal.df <- purrr::map_df(file.list, function(file.i) {
            # print(file.i)
            read_journal(.path = input$filepath,
                         .filename = file.i)
        }) %>%
            data.frame()
        
        source("server/server_dt.R", local = TRUE)
    })
    
# read_journals -----------------------------------------------------------


# DT ----------------------------------------------------------------------
    # source("server/server_dt.R", local = TRUE)
    
})
