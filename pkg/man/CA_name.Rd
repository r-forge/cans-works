\name{CA_name}
\alias{CA_name}
\title{CA name}
\description{Creates a single character string with assessor firstname, lastname and organization}
\usage{
CA_name(x,
show.name = TRUE,
show.org = TRUE,
firstname.col = 3,
org.col = 5)
}
\arguments{
  \item{x}{the CANS dataframe }
  \item{show.name}{logical, whether to include name}
  \item{show.org}{logical, whether to include org}
  \item{firstname.col}{numeric, column index for lastname}
  \item{org.col}{numeric, column index for organization}
}

\value{returns a vector of length=nrow of original dataframe}

\author{Jack Simons <jack.simons@state.ma.us>}





