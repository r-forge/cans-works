\name{recode_dx}
\alias{recode_dx}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
recode_dx(cans, dx.col = 90, dx.list)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cans}{
%%     ~~Describe \code{cans} here~~
}
  \item{dx.col}{
%%     ~~Describe \code{dx.col} here~~
}
  \item{dx.list}{
%%     ~~Describe \code{dx.list} here~~
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
function(cans, dx.col=90, dx.list) {
# cans is a standard CANS dataframe and cans.dx.col, an integer, is the column of diagnoses to recode.
# dx.list is a list of dx groupings created with make_dx_groups().
# A vector of diagnostic groups is returned, with length = nrow of the CANS database.

dx <- as.character(cans[, dx.col])
dx <- as.data.frame(dx, stringsAsFactors = FALSE)

for (dx.list.item in 1:length(dx.list)) {
  dx$group[dx$dx \%in\% dx.list[[dx.list.item]]] <- paste('grp', dx.list.item, sep='')
  }

head(dx, 50)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
