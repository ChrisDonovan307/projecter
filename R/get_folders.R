#' get_folders
#'
#' @description Create folders in project root
#'
#' @param folder_names is a character vector names for folders.
#'
#' @return
#' @export
#'
#' @examples
get_folders <- function(folder_names = NULL) {

  if (is.null(folder_names)) {
    folder_names <- c(
      '1_raw',
      '2_clean',
      '3_functions',
      '4_scripts',
      '5_objects',
      '6_outputs',
      '7_plots',
      '8_markdown',
      '9_graveyard'
    )

  } else {

    stopifnot(
      'folder_names argument must be a character or list of characters' =
        is.character(folder_names) | is.list(folder_names)
    )
  }

  if (any(file.exists(folder_names))) {
    indices <- which(file.exists(folder_names))
    stop(
      '\nFolder(s) ',
      paste0(folder_names[indices], ', '),
      ' already exist(s)!'
    )
  }
  lapply(folder_names, dir.create)
  cat('\n', paste0(folder_names, collapse = ', '), 'created.')
}
