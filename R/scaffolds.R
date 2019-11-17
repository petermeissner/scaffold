#' scaffolds
#'
#'
#' @export
#'
scaffolds <-
  list(

    shiny_material =
      function(path = "./shinyapp_material"){
        scf_scaffold(scf = "shiny_material", path_to = path, overwrite = FALSE)
      },

    shinyapp_dashboard =
      function(path = "./shinyapp_dashboard"){
        scf_scaffold(scf = "shiny_dashboard", path_to = path, overwrite = FALSE)
      },

    analytics_project =
      function(path = "./analytics_project"){
        scf_scaffold(scf = "analytics_project", path_to = path, overwrite = FALSE)
      },

    package_readme_github =
      function(path = "."){
        scf_scaffold(scf = "package_readme_github", path_to = path, overwrite = FALSE)
      }

  )


