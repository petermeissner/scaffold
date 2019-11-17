#' general scaffolding function
#'
#' @param scf path to scaffold from
#' @param path_to path to scaffold to
#' @param package the package to look for the scaffolding
#'
#' @export
#'
#' @examples \dontrun{
#'
#' scf_scaffold("shiny_material", path_to = ".")
#'
#' }
#'
scf_scaffold <-
  function(scf, path_to = NULL, package = "scaffold", overwrite = FALSE){

    # check path
    if ( is.null(path_to) ){
      path_to <- basename(scf)
    }

    pkg_path <- system.file(package = package)
    scf_path <- fs::path(pkg_path, "scaffold", scf)

    files <- list.files(scf_path, recursive = TRUE)

    paths_from <- fs::path(scf_path, files)
    paths_to   <- fs::path(path_to,  files)

    fs::dir_create(fs::path_dir(paths_to), recurse = TRUE)
    fs::file_copy(
      path      = paths_from,
      new_path  = paths_to,
      overwrite = overwrite
    )
  }
