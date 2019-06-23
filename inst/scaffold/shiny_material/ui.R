#### Description ###########################################

# Script with definition of UI function
#




#### Startup Logging #######################################

cat("ui     loaded at ", as.character(Sys.time()), "\n")




#### Packages ##############################################

library(shiny)
library(shinymaterial)




#### UI function ###########################################


ui <-
  material_page(
    title =
      tags$span(
        tags$img(
          src   = "img/rlogo.svg",
          style = "vertical-align:middle; height: 1.7em; margin-right: 1em;"
        ),
        "App-Title"
      ),
    include_fonts = FALSE,
    include_icons = FALSE,
    nav_bar_fixed = FALSE,
    nav_bar_color = "black",
    background_color = "grey lighten-4",


    # Icludes ##############################################

    tags$head(
      tags$link(
        rel  = "stylesheet",
        type = "text/css",
        href = "style.css"
      ),
      tags$script(src = "javascript.js")
    ),



    # Sidebar ##############################################

    material_side_nav(
      tags$h3("Menu", style="text-align: center;"),
      material_side_nav_tabs(
        side_nav_tabs =
          c(
          "Tab 1" = "tab_1",
          "Tab 2" = "tab_2"
          ),
        icons = c("cast", "insert_chart")
      )
    ),



    # Tab 1 ################################################

    material_side_nav_tab_content(
      side_nav_tab_id = "tab_1"
    ),



    # Tab 2 ################################################

    material_side_nav_tab_content(
      side_nav_tab_id = "tab_2"
    )
  )
