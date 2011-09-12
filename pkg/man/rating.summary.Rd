\name{rating.summary}
\alias{rating.summary}

\title{
Summarize CANS ratings for multiple records
}

\description{
Summarizes ratings for selected group of items, record by record.
Computes the number of items with values of 0,1,2,3, and 
missing. Computes the ratio of twos and threes ("actionable ratings") 
to total ratings and computes the mean rating. 
}

\usage{
cans, obs.id = 1, person.id = 2, obs.date = 32, items = 54:64
}

\arguments{
  \item{cans}{
a CANS dataframe
}
  \item{items}{
an integer vector containing the column numbers for the CANS
items to be summarized
}
	\item{person.id}{
an integer indicating the column number identifying the person
}
	\item{obs.id}{
an integer indicating the column number identifying the observation 
}
	\item{obs.date}{
an integer indicating the column number identifying the date of observation}
}

\details{
Note that for records where no items are rated (e.g. documented on paper, 
incomplete but final) the actionable ration will be NaN, and the mean will be NA.
}

\value{
Returns a dataframe of same nrow as the input dataframe, with 7 columns,
counting for each record the number of zeros, ones, twos, threes, NAs,
ration of actionable items (2s and 3s) to total, and mean rating.
}

\references{
https://r-forge.r-project.org/projects/cans-works/
}

\author{
Jack Simons <jack.simons@state.ma.us>
}

\note{
}

\seealso{
}

\examples{
## none at this time
}