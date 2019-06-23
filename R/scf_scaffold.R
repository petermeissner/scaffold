#' general scaffolding function
#'
#' @param scf path to scaffold from
#' @param path_to path to scaffold to
#'
#' @export
#'
#' @examples
scf_scaffold <-
  function(scf, path_to = NULL, package = "scaffold"){
    if ( is.null(path_to) ){
      path_to <- basename(scf)
    }

    pkg_path <- system.file(package = package)
    scf_path <- fs::path(pkg_path, scf)

    files <- fs::dir_ls(scf_path)

    fs::dir_create(path_to)

    fs::file_copy(
      path     = files,
      new_path = gsub("/*$", "/", path_to)
    )
  }
