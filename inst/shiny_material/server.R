#### Description ###########################################

# Script with definition of SERVER function
#



#### Startup Logging #######################################

cat("server loaded at ", as.character(Sys.time()), "\n")



#### Packages ##############################################

library(shiny)
library(shinymaterial)



#### Server function #######################################

server <-
  function(input, output, session) {
    SERVERDATA <-
      reactiveValues(
        server_start_chr = as.character(Sys.time()),
        server_start     = Sys.time()
      )
  }
