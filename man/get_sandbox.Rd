% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_sandbox.R
\name{get_sandbox}
\alias{get_sandbox}
\title{Build objects to play with}
\usage{
get_sandbox()
}
\value{
The function creates: \code{my_list}, which contains numeric,
character, and logical elements; \code{my_nlist}, which is nested; \code{my_vector},
which contains an array of numeric values; \code{my_df}, which contains numeric
and character columns.
}
\description{
\code{get_sandbox} creates objects to play around with in those
moments when you briefly forget how R works or what computers are.
}
\details{
The sandbox objects can be removed using the \code{get_sandbox}
function.
}
\seealso{
\code{\link[=remove_sandbox]{remove_sandbox()}}
}
