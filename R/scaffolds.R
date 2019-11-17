#' scaffolds
#'
#'
#' @export
#'
scaffolds <-
  list(

    shiny_material =
      function(path = "./shinyapp_material"){
        scf_scaffold(scf = "shiny_material", path_to = path)
      },

    shiny_material =
      function(path = "./shinyapp_dashboard"){
        scf_scaffold(scf = "shiny_dashboard", path_to = path)
      },

    shiny_material =
      function(path = "./analytics_project"){
        scf_scaffold(scf = "analytics_project", path_to = path)
      },

    shiny_material =
      function(path = "."){
        scf_scaffold(scf = "package_readme_github", path_to = path)
      }

  )


