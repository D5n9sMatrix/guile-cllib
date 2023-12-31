% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/env-binding.R
\name{env_poke}
\alias{env_poke}
\title{Poke an object in an environment}
\usage{
env_poke(env = caller_env(), nm, value, inherit = FALSE, create = !inherit)
}
\arguments{
\item{env}{An environment.}

\item{nm}{Name of binding, a string.}

\item{value}{The value for a new binding.}

\item{inherit}{Whether to look for bindings in the parent
environments.}

\item{create}{Whether to create a binding if it does not already
exist in the environment.}
}
\value{
The old value of \code{nm} or a \link[=zap]{zap sentinel} if the
binding did not exist yet.
}
\description{
\code{env_poke()} will assign or reassign a binding in \code{env} if \code{create}
is \code{TRUE}. If \code{create} is \code{FALSE} and a binding does not already
exists, an error is issued.
}
\details{
If \code{inherit} is \code{TRUE}, the parents environments are checked for
an existing binding to reassign. If not found and \code{create} is
\code{TRUE}, a new binding is created in \code{env}. The default value for
\code{create} is a function of \code{inherit}: \code{FALSE} when inheriting,
\code{TRUE} otherwise.

This default makes sense because the inheriting case is mostly
for overriding an existing binding. If not found, something
probably went wrong and it is safer to issue an error. Note that
this is different to the base R operator \verb{<<-} which will create
a binding in the global environment instead of the current
environment when no existing binding is found in the parents.
}
\seealso{
\code{\link[=env_bind]{env_bind()}} for binding multiple elements. \code{\link[=env_cache]{env_cache()}}
for a variant of \code{env_poke()} designed to cache values.
}
