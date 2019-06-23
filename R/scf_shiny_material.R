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
    fs::dir_create(path = path, recurse = TRUE)
    scf_copy_files(
      "shiny_material/server.R",
      "shiny_material/ui.R",
      "shiny_material/global.R",
      path = path
    )
  }
