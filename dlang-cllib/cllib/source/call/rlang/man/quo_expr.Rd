% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lifecycle-deprecated.R
\name{quo_expr}
\alias{quo_expr}
\title{Squash a quosure}
\usage{
quo_expr(quo, warn = FALSE)
}
\arguments{
\item{quo}{A quosure or expression.}

\item{warn}{Whether to warn if the quosure contains other quosures
(those will be collapsed). This is useful when you use
\code{quo_squash()} in order to make a non-tidyeval API compatible
with quosures. In that case, getting rid of the nested quosures
is likely to cause subtle bugs and it is good practice to warn
the user about it.}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}
This function is deprecated, please use \code{\link[=quo_squash]{quo_squash()}} instead.
}
\keyword{internal}
