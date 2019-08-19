#### Description ###########################################

# Script with definition of UI function
#




#### Startup Logging #######################################

cat("ui     loaded at ", as.character(Sys.time()), "\n")




#### Packages ##############################################

library(shiny)
library(shinydashboard)




#### UI function ###########################################


ui <-
  dashboardPage(

    title = "ShinyApp",
    skin  = "blue",

    header =
      dashboardHeader(
        title = HTML("<span style='font-size: 170%; vertical-align: middle;'>&#127775;</span> ShinyApp")
      ),



    sidebar =
      dashboardSidebar(
        collapsed = FALSE,

        sidebarMenu(
          menuItem(
            text       = "Tab1",
            tabName    = "tab1",
            icon       = icon("dashboard")
          ),

          menuItem(
            text       = "Tab2",
            icon       = icon("th"),
            tabName    = "tab2",
            badgeLabel = "new",
            badgeColor = "green"
          )
        )
      ),



    body =
      dashboardBody(
        #### TAB: Tab1 #########################################################
        tabItems(
          tabItem(

            tabName = "Tab1",
            h2("Tab1"),
            tags$p(
              "Welcome to tab 1"
            )

          ),



          #### TAB: Tab2 ######################################################
          tabItem(
            tabName = "tab2",
            h2("Tab2")
          )
        ),

        tags$head(
          tags$link(
            rel  = "stylesheet",
            type = "text/css",
            href = "style.css"
          ),
          tags$script(src = "javascript.js")
        )
      )
  )



