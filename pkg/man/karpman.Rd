\name{karpman}
\alias{karpman}

\title{
Deidentify PHI per HIPAA
}

\description{
Deidentify HIPAA protected health information per HIPAA "safe harbor" provision
}

\usage{
karpman(cans)
}

\arguments{
  \item{cans}{
A dataframe containing CANS records according to Massachusetts 254-field format. 
}
}
\details{
HIPAA provides guidelines for deidentification which include restrictions on dates, 
geographical data more specific than first 3 digits of zipcode, and unique identifiers.
We recode dates for individuals based on date of first CANS records.
We recode zip as first 3 digits.
We recode diagnosis into general diagnostic groups to reduce cell size for dx combinations.
}
\value{
Returns 
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
<jack.simons@state.ma.us>
}

\examples{
}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
