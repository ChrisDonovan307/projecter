#' Get Table of Contents
#'
#' @description Creates a Table of Contents file in the root directory
#' @return
#' @export
#'
#' @examples
#' get_toc()
get_toc <- function(toc = 'table_of_contents.R') {

  if (file.exists(toc)) {
    stop(toc, ' already exists!')
  }

  # Make toc template
  template <- paste0(
    "# Table of Contents\n",
    "# ", Sys.Date(), "\n",
    "\n\n",
    "# Housekeeping ------------------------------------------------------------",
    "\n\n",
    "# Workflow ----------------------------------------------------------------",
    "\n\n",
    "# Miscellany --------------------------------------------------------------",
    "\n\n"
  )

  writeLines(template, toc)
  cat(toc, 'created')
  file.edit(toc)
}
