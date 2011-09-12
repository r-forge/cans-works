\name{replace_factor_with_random_id}
\alias{replace_factor_with_random_id}

\title{
create a vector of randomly assigned integers that can replace a factor
}

\description{
create a vector of randomly assigned integers that can replace a factor
}

\usage{
replace_factor_with_random_id(cans, target_col)
}

\arguments{
  \item{cans}{
cans should be a 254 field CANS dataframe where the factor to be replaced 
is in field indexed by target_col.
}
  \item{target_col}{
an integer that is the index for the column containing data for recoding
}
}

\details{
}

\value{
returns a vector of same length as nrow of the original dataframe, 
where each element corresponds to a record in the same position in 
the dataframe
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
% none at this time
}