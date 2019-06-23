library(shiny)
library(shinymaterial)


# Wrap shinymaterial apps in material_page
ui <- material_page(
  title = "Basic Page + Side-Nav + Tabs",
  # Place side-nav in the beginning of the UI
  material_side_nav(
    fixed = FALSE,
    tags$h3("Side-Nav Content")
  ),
  # Define tabs
  material_tabs(
    tabs = c(
      "First Tab" = "first_tab",
      "Second Tab" = "second_tab"
    )
  ),
  # Define tab content
  material_tab_content(
    tab_id = "first_tab",
    tags$h1("First Tab Content")
  ),
  material_tab_content(
    tab_id = "second_tab",
    tags$h1("Second Tab Content")
  )
)
