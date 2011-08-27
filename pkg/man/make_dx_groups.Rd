\name{make_dx_groups}
\alias{make_dx_groups}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
make_dx_groups(number.of.groups)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{number.of.groups}{
%%     ~~Describe \code{number.of.groups} here~~
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
function(number.of.groups) {
#   dx.list is a list that is constructed incrementally using a loop.

dx.list <- rep('', number.of.groups)
cat('\n', 'There will be ', number.of.groups, ' diagnostic groups.\n\n', sep='')
for (i in 1:number.of.groups) {
  copy.prompt <- cat('Please copy to clipboard the column from Excel for diagnostic group number ', i, '. \nPress <Enter> to continue...\n', sep='')
  readline(prompt = copy.prompt)
  dx.list[i] <- read.delim("clipboard", header = FALSE)
  cat('Group ', i, ' contains ', length(dx.list[[i]]), ' diagnoses. \n\n', sep='')
  }

  # Add a final list item that is empty, to correspond to instances of no dx
dx.list[[length(dx.list) + 1]] <- ''
cat('An additional group at the end of the list corresponds to no diagnosis.\n\n')

dx.list
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
