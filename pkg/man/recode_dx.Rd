\name{recode_dx}
\alias{recode_dx}

\title{
Recode diagnoses into dx groups
}

\description{
Consolidates diagnoses into a few diagnostic groups, useful analytically and
also for HIPAA purposes to reduce risk of reidentification when cells are small
}

\usage{
recode_dx(cans, dx.col = 90, dx.list)
}

\arguments{
  \item{cans}{
cans is a standard CANS dataframe
}
  \item{dx.col}{
cans.dx.col, an integer, is the column of diagnoses to recode
}
  \item{dx.list}{
dx.list is a list of dx groupings created with make_dx_groups()
}
}

\details{
}

\value{
returns a vector, a factor of diagnostic groups 
}

\references{
}

\author{
Jack Simons <jack.simons@state.ma.us>
}

\note{
}

\examples{
% none at this time
}