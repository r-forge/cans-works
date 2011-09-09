\name{days_since_first_assessment}
\alias{days_since_first_assessment}

\title{
Days since first assessment
}

\description{
Converts date of assessment to days since first assessment.
Useful de deidentification of PHI under HIPAA.
Also useful in analysis of longitudinal data where elapsed time is important.
}

\usage{
days_since_first_assessment(cans)
}

\arguments{
  \item{cans}{
A dataframe where one column is date to be transformed
}
}

\details{
}

\value{
Returns the vector of elapsed days (integers) that can replace the date of assessment.
}

\author{
Jack Simons <jack.simons@state.ma.us>
}

\examples{
# no examples at this time
}
