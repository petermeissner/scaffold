#' scf_copy_files
#'
#' utility function moving files from inst dir to path
#'
#' @param ... file names to move from
#' @param path path to move to
#'
#' @return Nothing, called for side effect on file system.
#' Copies files from package's inst folder to path.
#' @export
#'
scf_copy_files <-
  function(..., path = "."){
    paths <-
      vapply(
        X         = list(...),
        FUN       =
          function(x, path_to){
            path_from <-
              system.file(
                x,
                package   = "scaffold"
              )
            fs::file_copy(
              path     = path_from,
              new_path = path_to
            )
          },
        FUN.VALUE = character(1),
        path_to   = path
      )
  }
