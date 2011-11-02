\name{plotCANS}
\alias{plotCANS}

\title{
Plot a series of CANS outcomes for a random sample of children
}

\description{
Creates a plot of trajectories over time, conditioned over individuals
}

\usage{
plotCANS(data, sample.size = 24, show.ID = FALSE, ID.column = 2, date.column = 32, layout.plan = c(6, 4, 1), groups.column = 31, use.color = T, ...)
}

\arguments{
  \item{data}{
the CANS data frame
}
  \item{sample.size}{
the number of individuals to be displayed in the lattice display
}
  \item{show.ID}{
logical value; should be set to TRUE if you want the ID to appear 
in the strip plot; default is FALSE for privacy to prevent display of 
client identifier 
}
  \item{ID.column}{
index of the column containing the individual ID (a factor)
}
  \item{date.column}{
index of the time variable, should be a vector of dates
}
  \item{layout.plan}{
an integer vector of length 3; the panel layout (see lattice documentation)
}
  \item{groups.column}{
index of grouping variable; this would usually be the column denoting the 
service or provider associated with the CANS data point
}
  \item{use.color}{
logical, set to F so points will display as symbols
}
  \item{\dots}{
allows you to pass additional parameters to xyplot()
}
}

\details{
}

\value{
returns a printable trellis object as described in Lattice documentation
}

\references{
}

\author{
Jack Simons <jack.simons@state.ma.us>
}

\note{
}

\seealso{
}

\examples{
## no examples yet
}
