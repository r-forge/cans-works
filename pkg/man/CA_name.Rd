\name{CA_name}
\alias{CA_name}

\title{Create variable containing assessor name and organization}

\description{
Combine first and last name, optionally with organization, 
into one vector of same length as CANS dataframe.
}

\usage{
CA_name(x, show.name = TRUE, show.org = TRUE, firstname.col = 3, lastname.col = 4, org.col = 5)
}

\arguments{
  \item{x}{A CANS dataframe.}
  \item{show.name}{Logical value, whether or not to include name in new field.}
  \item{show.org}{Logical value, whether or not to include organization in new field.}
  \item{firstname.col}{Column index for first name, default for MA CANS is column 3.}
  \item{lastname.col}{Column index for last name, default for MA CANS is column 4.}
  \item{org.col}{Column index for organization name, default for MA CANS is column 5.}
}

\value{
A character vector of same length as nrow of the dataframe from which it was derived.
}

\references{
http://cans-works.r-forge.r-project.org/
}

\author{
Jack Simons <jack.simons@state.ma.us>
}

\examples{
## no examples at this time
}

