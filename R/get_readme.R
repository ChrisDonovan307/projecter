#' Get README
#'
#' @description
#' Create a template of a README file with some options that are objectively
#' convenient.
#'
#' @return creates 'README.Rmd' in root folder
#' @export
#'
#' @examples
#' get_readme()
get_readme <- function() {

  # Make README template
  template <- paste0(
    "---\n",
    "title: \"Title\"\n",
    "author: \"Author\"\n",
    "date: \"`r Sys.Date()`\"\n",
    "output: \n",
    "  html_document: \n",
    "    toc: yes \n",
    "    toc_float: \n",
    "      smooth_scroll: yes \n",
    "    toc_depth: 3 \n",
    "    number_sections: 3 \n",
    "    theme: readable \n",
    "---\n\n",
    "```{r setup, include=FALSE}\n",
    "knitr::opts_chunk$set(echo = TRUE)\n",
    "```\n\n",
    "# Introduction\n",
    "Wicked README goes here.\n"
  )

  # Write the content to the file
  writeLines(template, 'README.Rmd')

  # Print message and path to console
  cat('README.Rmd created')

  # Open new markdown
  file.edit('README.Rmd')
}
