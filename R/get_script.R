#' Formatted script file
#'
#' @description Creates a formatted script file in the `4_scripts` directory by
#'   default.
#'
#' @param file_name A file name for
#' @param ... additional arguments passed onto `table()`.
#'
#' @details Just a convenience function to quickly make a script file and open it
#' @return Creates a script file as a side effect. Opens the script by default
#' @importFrom snakecase to_title_case
#' @export
#'
#' @examples
get_script <- function(file_name,
                       use_default_dir = FALSE,
                       directory = NULL,
                       open = TRUE,
                       overwrite = FALSE,
                       title = TRUE) {

  # If using default dir, make directory input 3_functions
  if (use_default_dir == TRUE) {
    directory <- '4_scripts/'
  }

  # Check if the directory exists
  if (!is.null(directory)) {

    # Stop if directory does not exist
    if (!dir.exists(directory)) {
      stop(directory, ' does not exist. Create folder first.')
    }

    # If there is no trailing slash on directory, add one
    if (!grepl(directory, '/$')) {
      directory <- paste0(directory, '/')
    }
  }

  # If there is no file extension, add .R
  if (!grepl('\\.', file_name)) {
    file_name <- paste0(file_name, '.R')
  }

  # Combine directory and file name to get full path to script
  if (!is.null(directory)) {
    full_path <- file_name
  } else {
    full_path <- paste0(directory, file_name)
  }

  # Don't overwrite files unless specified
  if (overwrite == FALSE & file.exists(full_path)) {
    stop(full_path, ' already exists. Use a different file name or use overwrite = TRUE.')
  }

  # Initiate script template
  template <- ''

  # Add formatted title if selected
  if (title == TRUE) {
    title <- unlist(strsplit(file_name, "\\.", fixed = FALSE))[1]
    title <- unlist(strsplit(title, "/", fixed = FALSE))
    title <- title[length(title)]
    title <- snakecase::to_title_case(title)
    template <- paste0(template, "# ", title, "\n")
  }

  # Add rest of template
  template <- paste0(
    template,
    paste0(
      "# ", Sys.Date(), "\n",
      "\n\n",
      "# Description -------------------------------------------------------------",
      "\n\n\n",
      "# Housekeeping ------------------------------------------------------------",
      "\n\n"
    )
  )

  # Create script
  writeLines(template, full_path)
  cat('\n', file_name, ' created', sep = '')

  # Open the file automatically by default
  if (open == TRUE) {
    file.edit(full_path)
  }
}
