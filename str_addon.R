# Add this to get_str to have it remove attributes by default
# Add an option to show them if desired
str <- function(object) {
  attributes(object) <- attributes(object)[setdiff(names(attributes(object)), "spec")]
  str(object)
}
