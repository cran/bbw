% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootBW.r
\name{bootBW}
\alias{bootBW}
\title{Blocked Weighted Bootstrap}
\usage{
bootBW(x, w, statistic, params, outputColumns = params, replicates = 400)
}
\arguments{
\item{x}{A \code{\link[=data.frame]{data.frame()}} with primary sampling unit (PSU) in variable named
\code{psu} and at least one other variable containing data for estimation.}

\item{w}{A \code{\link[=data.frame]{data.frame()}} with primary sampling unit (PSU) in variable named
\code{psu} and survey weights (i.e. PSU population) in variable named \code{pop}.}

\item{statistic}{Am estimator function operating on variables in \code{x}
containing data for estimation. The functions \code{\link[=bootClassic]{bootClassic()}} and
\code{\link[=bootPROBIT]{bootPROBIT()}} are examples.}

\item{params}{Parameters specified as names of columns in \code{x} that are to be
passed to the function specified in \code{statistic}.}

\item{outputColumns}{Names to be used for columns in output \code{\link[=data.frame]{data.frame()}}.
Default to names specified in \code{params}.}

\item{replicates}{Number of bootstrap replicates to be performed. Default is
400.}
}
\value{
A \code{\link[=data.frame]{data.frame()}} with:
\itemize{
\item number of columns equal to length of \code{outputColumns};
\item number of rows equal to number of \code{replicates}; and,`
\item names equal to \code{outputColumns}.`
}
}
\description{
The \strong{blocked weighted bootstrap (BBW)} is an estimation technique for
use with data from two-stage cluster sampled surveys in which either prior
weighting (e.g. \strong{population proportional sampling} or \strong{PPS} as
used in \strong{SMART} surveys) or posterior weighting (e.g. as used in
\strong{RAM} and \strong{S3M} surveys).
}
\examples{
# Example call to bootBW function using RAM-OP test data:

bootBW(
  x = indicatorsHH, w = villageData, statistic = bootClassic,
  params = "anc1", outputColumns = "anc1", replicates = 9
)

# Example estimate with 95\% CI:
#quantile(bootP, probs = c(0.500, 0.025, 0.975), na.rm = TRUE)

}
