#### Description ###########################################

# Globally available packages and objects
#
# - in each session
# - in each UI function
# - in each Server function
#


#### Startup Logging #######################################

cat("global loaded at ", as.character(Sys.time()), "\n")



#### Packages ##############################################

library(shiny)
library(shinymaterial)


#### Appdata ###############################################

APPDATA <-
  list(
    session_start_chr <- as.character(Sys.time()),
    session_start     <- Sys.time()
  )


