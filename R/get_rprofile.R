#' Get a .Rprofile template
#'
#' @param path
#' @export
get_rprofile <- function(open = FALSE) {

  # Check if .Rprofile already exists
  if (file.exists('.Rprofile')) {
    stop('\n.Rprofile already exists!')
  }

  # Read lines from template and save as a new file
  profile <- readLines("inst/.Rprofile")
  writeLines(profile, con = '.Rprofile')
  cat('\n.Rprofile created.')

  # Open the script to edit
  if (open == TRUE) {
    file.edit('.Rprofile')
  }
}
