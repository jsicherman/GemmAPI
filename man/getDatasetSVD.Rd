% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/allEndpoints.R
\name{getDatasetSVD}
\alias{getDatasetSVD}
\title{Dataset SVD information}
\usage{
getDatasetSVD(
  dataset = NA_character_,
  raw = getOption("gemma.raw", F),
  async = getOption("gemma.async", F),
  memoised = getOption("gemma.memoise", F),
  file = getOption("gemma.file", NA_character_),
  overwrite = getOption("gemma.overwrite", F)
)
}
\arguments{
\item{dataset}{Required, part of the URL path.
Can either be the dataset ID or its short name (e.g. \code{GSE1234}).
Retrieval by ID is more efficient.
Only datasets that user has access to will be available}

\item{raw}{\code{TRUE} to receive results as-is from Gemma, or \code{FALSE} to enable
parsing.}

\item{async}{\code{TRUE} to run the API query on a separate worker, or \code{FALSE} to run
synchronously. See the \code{async} package for details.}

\item{memoised}{Whether or not to cache results so future requests for the same data
will be faster. Use \code{forgetGemmaMemoised} to clear the cache.}

\item{file}{The name of a file to save the results to, or \code{NULL} to not write
results to a file. If \code{raw == TRUE}, the output will be a JSON file.
Otherwise, it will be a RDS file.}

\item{overwrite}{Whether or not to overwrite if a file exists at the specified filename.}
}
\value{
A simple SVD value object for the given dataset, containing information
about SVD of expression data
A \verb{404 error} if the given identifier does not map to any object.
Properties of the returned object are:
\itemize{
\item \strong{bioMaterialIds} - Array of Bio Material IDs, in same order as the
rows of the v matrix
\item \strong{variances} - An array of values representing the fraction of the
variance each component accounts for
\item \strong{vMatrix} - the V Matrix (DoubleMatrix object)
}
}
\description{
Retrieves the SVD information for the given dataset
}
\keyword{dataset}
