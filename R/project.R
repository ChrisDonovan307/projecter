#' Title
#'
#' @return
#' @export
#'
#' @examples
projecter <- function(make_folders = TRUE) {

  # Create folder structure
  if (make_folders == TRUE) {
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
    if (any(file.exists(folder_names))) {
      indices <- which(file.exists(folder_names))
      stop(
        '\nFolder(s) ',
        paste0(folder_names[indices], ', '),
        ' already exist!'
      )
    }
    lapply(folder_names, dir.create)
    cat('\n', paste0(folder_names, collapse = ', '), 'created.')
  }

  # Create project files
  get_toc(open = FALSE)
  get_readme(open = FALSE)
  get_rprofile(open = FALSE)

}
