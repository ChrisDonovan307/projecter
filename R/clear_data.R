#' Remove data objects from the global environment
#'
#' @description `clear_data()` wraps around `rm()` to remove data objects from
#'   the global environment, but does not remove sourced functions. It is a
#'   convenient function to put at the end of modular scripts to shed any errant
#'   objects.
#'
#' @details It is important to note that this function does not provide a clean
#'   slate restart of R. Full resets should be performed liberally, either by
#'   closing and restarting R or using `CTRL/CMD + SHIFT + F10`. Clearing
#'   objects from the environment is does not achieve this. Rather,
#'   `clear_data()` is meant to be used at the end of modular scripts. Pertinent
#'   objects can either be saved to .rds or by using the `keep` argument.
#'
#' @return Global objects which are not functions are removed from the
#'   environment.
#'
#' @importFrom utils lsf.str
#' @export
#'
#' @examples
clear_data <- \(keep = NULL) {
  stopifnot(is.character(keep) | is.null(keep))
  keep_list <- as.list(keep)
  all_data_objects <- setdiff(ls(envir = .GlobalEnv), lsf.str(envir = .GlobalEnv))
  remove_list <- setdiff(all_data_objects, keep_list)
  rm(list = remove_list, envir = .GlobalEnv)
}
