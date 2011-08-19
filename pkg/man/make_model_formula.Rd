\name{make_model_formula}
\alias{make_model_formula}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
make_model_formula(leftvars = 0, rightvars = 0, data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{leftvars}{
%%     ~~Describe \code{leftvars} here~~
}
  \item{rightvars}{
%%     ~~Describe \code{rightvars} here~~
}
  \item{data}{
%%     ~~Describe \code{data} here~~
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
function(leftvars=0, rightvars=0, data) {
leftstring <- paste(names(data)[leftvars], collapse=" + ")
# print(c("leftvars:", paste(leftvars, collapse=" ")))
# print(c("leftstring:", leftstring))
rightstring <- paste(names(data)[rightvars], collapse=" + ")
# print(c("rightvars:", paste(rightvars, collapse=" ")))
# print(c("rightstring:", rightstring))
model<-paste(leftstring, " ~ ", rightstring)
model}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
