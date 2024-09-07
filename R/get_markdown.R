#' Get Markdown
#'
#' @description
#' Create a template of a markdown file
#'
#' @param file_name the file name of the markdown to create. Can include the
#' `.Rds` suffix or not.
#'
#' @return a markdown template at path `file_name`
#' @export
#'
#' @examples
#' get_markdown('my_markdown')
#' get_markdown('8_markdowns/my_markdown.rds')
get_markdown <- function(file_name = 'template') {

  # Add a trailing .Rmd if it is not there already
  if (!grepl('\\.Rmd$', file_name)) {
    file_name <- paste0(file_name, '.Rmd')
  }

  # Make markdown template
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
    "#pacman::p_load(conflicted, here)\n",
    "#here::i_am()\n",
    "```\n\n",
    "# Introduction\n",
    "Wicked markdown goes here.\n"
  )

  # Write the content to the file
  writeLines(template, file_name)

  # Print message and path to console
  cat(file_name, 'created')

  # Open new markdown
  file.edit(file_name)
}
