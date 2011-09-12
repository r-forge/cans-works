\name{select_persons}
\alias{select_persons}

\title{
Select persons by number of observations
}

\description{
Select the subset of persons who have a specified number 
of observations in the CANS dataframe
}

\usage{
select_persons(cans, observations, person.id = 2)
}

\arguments{
  \item{cans}{cans is a CANS dataframe
}
  \item{observations}{
observations is a vector of integers which are the desired number of 
observations; could be a single integer, a range, or any set of values
}
  \item{person.id}{
person.id is an integer, the column number of the person identifier
}
}

\details{
}

\value{
Returns a dataframe where the first column is a character vector of person
identifiers, and the second column is the number of observatrions associated
with each person. Ordered by decreasing number of observations.
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
# none now
}

