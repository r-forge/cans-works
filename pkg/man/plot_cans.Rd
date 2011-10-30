\name{plot_cans}
\alias{plot_cans}

\title{
lattice xyplot of CANS from sample of individuals
}

\description{
Create plots similar to those of Singer and Willett chs 3 and 4
}

\usage{
plotCANS (data, sample.size=24, show.ID=false, 
ID.column=2, date.column=32,  layout.plan=c(6,4,1),
groups.column=31, use.color=T, ...)
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
	\item{show.ID}{
logical value, should be set to TRUE if you want the ID to appear 
in the strip plot; default is FALSE for privacy to prevent display of 
client identifier;
	\item{use.color}{
logical value, set to F so points will display as symbols instead
of colored points, for monochrome printing
}
	\item{layout.plan}{
numeric vector of length=3 defines number of rows, columns, pages 
of the panel layout (see lattice documentation)
}	
	\item{...}{
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