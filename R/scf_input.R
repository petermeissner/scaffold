#' scf_input
#'
#' @param x input prototype to parse
#'
#' @export
#'
scf_input <-
  function(x = character()){
    stopifnot(interactive())

    tmp <- ""
    while(nchar(tmp) < 1){
      tmp <- readline(prompt = "? ")
    }

    if ( inherits(x, "character") ){

      return(tmp)

    } else if (inherits(x, "integer")) {

      return(as.integer(tmp))

    } else if (inherits(x, "numeric")) {

      return(as.numeric(tmp))

    } else {

      return(tmp)

    }
  }
