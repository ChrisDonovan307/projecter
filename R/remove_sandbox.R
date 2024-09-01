#' Remove sandbox objects
#'
#' @description `remove_sandbox` simply removes the objects created by the
#' `build_sandbox` function.
#'
#' @seealso [build_sandbox()]
#'
#' @return
#' @export
#'
#' @examples
remove_sandbox <-
function() {
  suppressWarnings(
    tryCatch(
      rm(list = c('my_list', 'my_nlist', 'my_vector', 'my_df'),
         envir = .GlobalEnv)
    )
  )
}
