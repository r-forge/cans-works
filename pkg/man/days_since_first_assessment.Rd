\name{days_since_first_assessment}
\alias{days_since_first_assessment}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
days_since_first_assessment(cans)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cans}{
%%     ~~Describe \code{cans} here~~
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
function (cans) {

# Make sure MHID is factor:
cans[,2]<-as.factor(cans[,2])

# Make sure Date of Assessment is of class Date:
cans[,32] <- as.Date(cans[,32],format="\%m/\%d/\%Y")

# Note: in next step the single bracket [] is used to identify a list of columns
# in data frame, as required in aggregate(). This step creates a dataframe with
# nrow equal to number of initial dates of assessment. This dataframe allows us to
# translate from Date of Assessment to days elapsed since first.
date.key<- aggregate(cans[32], by=cans[2], min)

# Create the vector of elapsed days (integers) that can replace the date of assessment.
# (you might also do this with merge() which uses match() internally;
# the following method is straightforward and fast enough for our purposes, 
# but see Adler for faster methods using environments)
init.date <- date.key[match(cans[, 2], date.key[, 1]), 2]
# calculate the diffence in dates
days <- as.numeric(cans[, 32]-init.date)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
