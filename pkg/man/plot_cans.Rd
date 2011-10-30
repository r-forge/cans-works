\name{plot_cans}
\alias{plot_cans}

\title{
lattice xyplot of CANS from sample of individuals
}

\description{
Create plots similar to those of Singer and Willett chs 3 and 4
}

\usage{
plotCANS (data, ID.column=2, date.column=32, groups.column=31, n=24, ...)
}

\arguments{
  \item{data}{
the CANS data frame 
}
  \item{ID.column}{
the column containing the individual ID (a factor)
}
  \item{date.column}{
the time variable, should be a vector of dates
}
	\item{group.column}{
the column containing the grouping variable, usually the service or provider
}
	\{...}{
allows you to pass additional parameters to xyplot()
}


\details{
}

\value{
returns a lattice object and sends it to the print method
}

\references{
}

\author{
Jack Simons <jack.simons@state.ma.us>
}

\note{
}

\examples{
% none at this time
}