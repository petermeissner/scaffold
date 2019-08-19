#' scf_choice
#'
#' @param choices choices t select among or a zero
#'     length prototype e.g. integer(0)
#' @param name name to show and to store values in
#' @param desc an optional description to show to user
#'
#' @export
#'
scf_choice <-
  function(
    choices = character(),
    name    = "item",
    desc    = "choose"
    ){
      tmp <-
        list(
          choices = choices,
          name    = name,
          desc    = desc
        )
      class(tmp) <- c("scf_choice", class(tmp))
    }
