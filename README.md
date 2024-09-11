projecter
================
Chris Donovan

September 10, 2024

- [Introduction](#introduction)
- [Installation](#installation)
- [How to Project](#how-to-project)

# Introduction

The projecter package is a small collection of functions that make my
life easier. It contains some wrappers with somewhat sensible defaults
for setting up a README, Rprofile, and Table of Contents scripts. The
main function is `project()`, which does all three. The package also
contains some convenience functions for wrangling data. This is very
much a work in progress, and mostly set up for my own peace of mind.

# Installation

You can install the development version of projecter from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("ChrisDonovan307/projecter")
```

# How to Project

The `project()` function doesn’t mess with Git or Rstudio projects to
make it a bit more flexible. Those should be done the good old fashioned
way. Within an existing directory, `project()` will create a template
for the `README.Rmd`, a template for the `table_of_contents.R`, and
creates an `.Rprofile` script that sets the CRAN mirror, loads the
pacman and conflicted packages, and tries to open the table of contents
file as a landing page.
