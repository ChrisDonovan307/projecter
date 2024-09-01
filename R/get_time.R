#' Print message and current system time
#'
#' @param msg a character string, object, or concatenated vector of the two that
#'   will be printed before. They will show before the current system time.
#'
#' @return `msg` is concatenated and printed to the console followed by the
#'   current system time.
#'
#' @details This is a convenient function if you are dealing with long
#'   processing times and loops. It can be placed within a for loop, apply loop,
#'   or map function and take the iteration number to print how far along the
#'   process is.
#'
#' @export get_time
#'
#' @examples
#' get_time()
#' x <- 426
#' get_time(c('Starting iteration ', x, ' at'))
get_time <- function(msg = 'Starting at') {
  cat(
    '\n',
    msg,
    ' ',
    format(Sys.time(), '%X'),
    '\n',
    sep = ''
  )
}

