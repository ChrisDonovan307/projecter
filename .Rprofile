# Load utils so we can use install.packages()
library(utils)

# Set CRAN mirror
local({
  r <- getOption("repos")
  r["CRAN"] <- "https://cloud.r-project.org"
  options(repos = r)
})

# Install pacman if not installed already
suppressPackageStartupMessages(
  if (!requireNamespace('pacman')) {
    install.packages('pacman', dependencies = TRUE, quiet = TRUE)
  }
)

# Load development packages
pacman::p_load(
  devtools,
  testthat,
  usethis
)

# Load current project
devtools::load_all()