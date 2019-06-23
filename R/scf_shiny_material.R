#' scf_shiny_material
#'
#' @param path path where to create function
#'
#' @return Nothing, called for side effect on file system.
#' Creates shinyapp folder needed files for shiny material app.
#'
#' @export
#'
scf_shiny_material <-
  function(path = "./shinyapp"){
    scf_scaffold(scf = "shiny_material", path_to = path)
  }
