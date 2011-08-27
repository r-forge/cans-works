\name{replace_factor_with_random_id}
\alias{replace_factor_with_random_id}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
replace_factor_with_random_id(cans, target_col)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cans}{
%%     ~~Describe \code{cans} here~~
}
  \item{target_col}{
%%     ~~Describe \code{target_col} here~~
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
function(cans, target_col) {
  
# cans should be a 254 field CANS dataframe where the factor to be replaced
# is in field indexed by target_col.
# We want to create a vector of randomly assigned integers that can replace the factor. 
# The vector must have length equal to number of rows in CANS dataframe.
# The vector must have number of distinct values equal to number of levels of target column.

# Ensure the specified column in a factor and take its levels.
factor.levels <- levels(factor(cans[, target_col]))

# Create a random identifier to match each value in MHID; using the sample() 
# function randomizes their order.
newID <- sample(length(factor.levels))

# Make a dataframe that translates from one to the other and display first 50 
# rows to check it.
translate <- data.frame(factor.levels, newID)

# Create the vector of integers that can replace the target field.
# (you might also do this with merge() which uses match() internally;
# the following method is straightforward and fast enough for our purposes, 
# but see Adler for faster methods using environments)
ID <- translate[match(cans[, target_col], translate[, 1]), "newID"]

  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
