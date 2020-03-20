
rmarkdown::render(input = "read_journals.Rmd",
                  output_file = "daily_log.html",
                  output_dir = file.path(
                    "C:",
                    "Users",
                    "zmsmith.000", 
                    "New York State Office of Information Technology Services",
                    "dec.365.SASS - TelecommutingLogs")
                  )
