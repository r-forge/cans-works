\name{CA_name}
\alias{CA_name}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
CA_name(x, show.name = TRUE, show.org = TRUE, firstname.col = 3, lastname.col = 4, org.col = 5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{show.name}{
%%     ~~Describe \code{show.name} here~~
}
  \item{show.org}{
%%     ~~Describe \code{show.org} here~~
}
  \item{firstname.col}{
%%     ~~Describe \code{firstname.col} here~~
}
  \item{lastname.col}{
%%     ~~Describe \code{lastname.col} here~~
}
  \item{org.col}{
%%     ~~Describe \code{org.col} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(x, show.name=TRUE, show.org=TRUE, 
                     firstname.col = 3, lastname.col = 4, org.col = 5) {
#   trims the white space after firstname and pastes with lastname
  if (show.name) x$CA <- paste(gsub(" +", "", x[, firstname.col]), x[, lastname.col], sep=' ')
#   paste the org onto the name, with comma separator
  if (show.org) x$CA <- paste(x$CA, x[, org.col], sep=', ')
  x$CA
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
