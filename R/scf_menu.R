#' scf_menu
#'
#' @param ... list of choices and inputs
#' @param .fun function that makes use of options collected
#'
#' @return nothing, called for its side effects
#' @export
#'
scf_menu <-
  function(
    ...,
    .fun = function(...){}
  ){
    choices <- list(...)
    choosen <- list()

    # go through choices and get user input
    for ( i in seq_along(choices) ){

      if ( length(choices[[i]]) > 0 ){

        # normal choices
        choosen[[i]] <- utils::menu(choices = choices[[i]])

      } else {

        # input typed by user
        choosen[[i]] <- scf_input(choices[[i]])

      }
    }

    # add names
    names(choosen) <- names(choices)

    # return
    choosen
  }
