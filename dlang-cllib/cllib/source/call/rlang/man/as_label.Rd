% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deparse.R
\name{as_label}
\alias{as_label}
\title{Create a default name for an R object}
\usage{
as_label(x)
}
\arguments{
\item{x}{An object.}
}
\description{
\code{as_label()} transforms R objects into a short, human-readable
description. You can use labels to:
\itemize{
\item Display an object in a concise way, for example to labellise axes
in a graphical plot.
\item Give default names to columns in a data frame. In this case,
labelling is the first step before name repair.
}

See also \code{\link[=as_name]{as_name()}} for transforming symbols back to a
string. Unlike \code{as_label()}, \code{as_name()} is a well defined
operation that guarantees the roundtrip symbol -> string ->
symbol.

In general, if you don't know for sure what kind of object you're
dealing with (a call, a symbol, an unquoted constant), use
\code{as_label()} and make no assumption about the resulting string. If
you know you have a symbol and need the name of the object it
refers to, use \code{\link[=as_name]{as_name()}}. For instance, use \code{as_label()} with
objects captured with \code{enquo()} and \code{as_name()} with symbols
captured with \code{ensym()}.
}
\section{Transformation to string}{

\itemize{
\item Quosures are \link[=quo_squash]{squashed} before being labelled.
\item Symbols are transformed to string with \code{as_string()}.
\item Calls are abbreviated.
\item Numbers are represented as such.
\item Other constants are represented by their type, such as \verb{<dbl>}
or \verb{<data.frame>}.
}
}

\examples{
# as_label() is useful with quoted expressions:
as_label(expr(foo(bar)))

as_label(expr(foobar))

# It works with any R object. This is also useful for quoted
# arguments because the user might unquote constant objects:
as_label(1:3)

as_label(base::list)
}
\seealso{
\code{\link[=as_name]{as_name()}} for transforming symbols back to a string
deterministically.
}
