#' Get formatted size of an object
#'
#' @description This function is just a wrapper around `object.size()` that checks
#' how large the object is and uses `format()` to provide the output in Kb, Mb, or
#' Gb as is appropriate.
#'
#' @param x An R object.
#' @param ... Arguments passed on to `object.size()`
#'
#' @return A formatted character string describing the size of the object.
#'
#' @importFrom utils object.size
#' @export
#'
#' @seealso [object.size()], [format()]
#'
#' @examples
#' get_size(iris)
get_size <-
function(x, ...) {

  size <- object.size(x, ...)

  if (size < 1e6) {
    units <- 'Kb'
  } else if (size < 1e9) {
    units <- 'Mb'
  } else if (size >= 1e9) {
    units <- 'Gb'
  }

  format(size, units = units)


}
