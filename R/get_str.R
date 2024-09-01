#' User friendly wrapper for `str()`
#'
#' @param obj an R object.
#' @param level if `obj` is a nested list, how many layers down should be
#'   shown.
#' @param all_cols is passed on to the `max.levels` argument of `str()`. When
#'   `obj` is a data frame with many columns, TRUE means that all columns
#'   should be shown in the output. FALSE means that
#' @param strict.width is passed on to the `strict.width` argument of `str()`.
#'   The default, "cut", means that the output will be cut at the edge of the
#'   current size of the console, no matter how many or few values it will show.
#' @param ... additional arguments passed on to `str()`.
#'
#' @return Returns the usual output of `str()`, but formatted to be clearer,
#' show more information at once, and avoid typing in the rather verbose
#' arguments into `str()`,
#'
#' @importFrom utils str
#' @export
#'
#' @examples
#' get_str(iris)
#' get_str(mtcars)

get_str <- function(obj,
                    level = 2,
                    all_cols = TRUE,
                    strict.width = 'cut',
                    ...) {
  if (is.data.frame(obj)) {
    if (all_cols == TRUE) {
      str(
        object = obj,
        max.level = level,
        strict.width = strict.width,
        list.len = ncol(obj),
        vec.len = 100,
        ...
      )
    } else {
      str(
        object = obj,
        max.level = level,
        strict.width = strict.width,
        vec.len = 100,
        ...
      )
    }
  } else if (is.list(obj) && all_cols == TRUE) {
    str(
      object = obj,
      max.level = level,
      strict.width = strict.width,
      vec.len = 100,
      ...
    )
  } else if (is.list(obj) && all_cols == FALSE) {
    str(
      object = obj,
      max.level = level,
      strict.width = strict.width,
      list.len = 250,
      vec.len = 100,
      ...
    )
  } else if (all_cols == TRUE) {
    str(
      object = obj,
      max.level = level,
      strict.width = strict.width,
      vec.len = 100,
      list.len = ncol(obj),
      ...
    )
  } else {
    str(
      object = obj,
      max.level = level,
      strict.width = strict.width,
      ...
    )
  }
}
