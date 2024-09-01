#' Remove data objects from the global environment
#'
#' @description `clear_data` wraps around `rm()` to remove data objects from the
#' global environment, but does not remove sourced functions. It is a convenient
#' function to put at the end of modular scripts to shed any errant objects.
#'
#' @details It is important to note that this function does not provide a clean
#' slate restart of R. Full resets should be performed liberally, either closing
#' and restarting R or using `CTRL/CMD + SHIFT + F10` is a best practice, and
#' clearing objects from the environment is does not achieve this. Rather,
#' `clear_data` is meant to be used at the end of modular scripts that are run
#' sequentially. After pertinent objects are saved, this function can be used
#' to remove other data objects while keeping sourced functions intact.
#'
#' @return No direct outputs. Side effect is that global objects which are not
#' packages are removed from the environment.
#'
#' @importFrom utils lsf.str
#' @export
#'
#' @examples
clear_data <-
\() {
  rm(list = setdiff(ls(envir = .GlobalEnv),
                    lsf.str(envir = .GlobalEnv)),
     envir = .GlobalEnv)
}
