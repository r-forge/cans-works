\name{truncate_zip}
\alias{truncate_zip}

\title{
Retain first 3 digits of zipcode
}

\description{
Truncates zipcode to first three digits for purposes of HIPAA
deidentification
}

\usage{
truncate_zip(cans, zip.col = 18)
}

\arguments{
  \item{cans}{
A dataframe containing a column of zipcodes
}
  \item{zip.col}{
Column index of target column of zipcodes
}
}

\details{
}

\value{
Returns a vector of character strings, same length as nrow of original dataframe
}

\author{
Jack Simons <jack.simons@state.ma.us>
}

\examples{
% none at this time
}
