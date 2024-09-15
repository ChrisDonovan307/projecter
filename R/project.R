#' Project project
#'
#' @return
#' @export
#'
#' @examples
project <- function(
    readme = TRUE,
    toc = TRUE,
    rprofile = TRUE,
    folders = TRUE,
    folder_names = NULL
  ) {

  # Create project files
  env <- as.list(environment())
  args <- env[1:length(env)]

  for (arg in args) {
    if (arg == TRUE) {
      func <- get(arg)
      func(open = FALSE)
    }
  }

  # Create project folders
  if (folders == TRUE) {
    get_folders(folder_names = folder_names)
  }

}
