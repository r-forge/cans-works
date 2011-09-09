\name{read_cans}
\alias{read_cans}

\title{
Read the text file produced by the MA CBHI CANS system
}

\description{
Read the text file produced by the MA CBHI CANS system.
The function performs minimal checks on the data file prior to import. 
}

\usage{
read_cans(tool = c("Under5", "5Over", ""), status = c("COMPLETE", "DOCUMENTED ON PAPER", "INCOMPLETE BUT FINAL", ""), filename = "choose")
}

\arguments{
  \item{tool}{
a character string or vector 
}
  \item{status}{
a character string or vector 
}
  \item{filename}{
a filename including path; if this is empty, the function will bring up a Windows file chooser
}
}

\details{
}

\value{
returns a dataframe in which each row is a CANS record, and each column is a field
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