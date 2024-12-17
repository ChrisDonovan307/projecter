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
get_folders <- function(path = '.',
                        folder_names = NULL) {

  if (is.null(folder_names)) {
    folder_names <- c(
      '1_raw',
      '2_clean',
      '3_functions',
      '4_scripts',
      '5_objects',
      '6_outputs',
      '7_markdown',
      '8_graveyard'
    )

  } else {

    stopifnot(
      '\nfolder_names argument must be a character or list of characters' =
        is.character(folder_names) | is.list(folder_names)
    )
  }

  folder_paths <- paste0(path, '/', folder_names)

  if (any(file.exists(folder_paths))) {
    indices <- which(file.exists(folder_paths))
    stop(
      '\nFolder(s) ',
      paste0(folder_paths[indices], ','),
      ' already exist(s)'
    )
  }
  lapply(folder_paths, dir.create)
  cat('\nFolder(s)', paste0(folder_paths, collapse = ', '), 'created.')
}
