\name{sample_cans}
\alias{sample_cans}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
sample_cans(cans, sample.size)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cans}{
%%     ~~Describe \code{cans} here~~
}
  \item{sample.size}{
%%     ~~Describe \code{sample.size} here~~
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
Jack Simons <jack.simons@state.ma.us>
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
function(cans, sample.size) {

# cans is the dataframe from which you want to sample, 
# sample.size is the number of records you want to get.

row.index<-sample(length(cans[,1]), sample.size)
sample<-cans[row.index,]
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
