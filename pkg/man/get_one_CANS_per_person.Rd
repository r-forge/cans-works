\name{get_one_CANS_per_person}
\alias{get_one_CANS_per_person}

\title{
Get one CANS record per person
}

\description{
Allows you to choose first or last CANS record for each individual
}

\usage{
get_one_CANS_per_person(x, most_recent = TRUE)
}

\arguments{
  \item{x}{
	A dataframe with CANS data
	}
  \item{most_recent}{Logical, choose most recent record for each? 
  Else will choose first record for each. 
}
}

\details{
}

\value{
Returns a dataframe with only the desired records retained.
Assumes date is in col 32 and ID is in col 2.
Needs rewriting to be more general.
}

\author{
Jack Simons <jack.simons@state.ma.us>
}

\examples{
# no examples at this time
}
