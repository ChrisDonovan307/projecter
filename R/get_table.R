#' Table with NAs by default
#'
#' @description Wrapper for `table()` that with argument `useNA = "always"` by
#' defualt.
#'
#' @param x an object that can be interpreted as a factor or list.
#' @param ... additional arguments passed onto `table()`.
#'
#' @details This is really better off as an option setting, but I've already
#'   come this far and have gotten used to using it.
#' @return Returns a contingency table.
#' @export
#' @seealso [table()]
#'
#' @examples
get_table <- function(x, ...) {
    table(x, useNA = 'always', ...)
}
