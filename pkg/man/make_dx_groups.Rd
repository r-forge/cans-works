\name{make_dx_groups}
\alias{make_dx_groups}

\title{
Creates a R list in which each element corresponds to a group of diagnoses
}

\description{
Creates an R list in which each element corresponds to a group of diagnoses.
The set of diagnoses for each group should be in an Excel table, for copying.
Each group of diagnoses should be in an Excel column with no header.
dx.list is a list that is constructed incrementally using a loop.
}

\usage{
make_dx_groups(number.of.groups)
}

\arguments{
  \item{number.of.groups}{
Number of diagnostic groups to be created
}
}

\value{
Creates an R list in which each element corresponds to a group of diagnoses.
}

\author{
Jack Simons <jack.simons@state.ma.us>
}

\examples{
# none at this time
}
