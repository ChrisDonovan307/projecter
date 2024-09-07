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
    lapply(folder_names, dir.create())
  }

  # Create project files
  get_toc()
  get_readme()

}
