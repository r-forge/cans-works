\name{get_one_CANS_per_person}
\alias{get_one_CANS_per_person}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
get_one_CANS_per_person(x, most_recent = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{most_recent}{
%%     ~~Describe \code{most_recent} here~~
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
function  (x, most_recent = TRUE) {
# first get order by date, either increasing or decreasing
  date.order <- order(x[, 32], decreasing=most_recent)
# now get order by MHID
  MHID.order <- order(x[, 2])
# order the records by date within MHID
  x <- x[order(date.order), ]
  x <- x[order(MHID.order), ]
# find the duplicates for each MHID
  dups <- duplicated(x[, 2])
# remove the duplicates  
  x <- x[!dups, ]
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
