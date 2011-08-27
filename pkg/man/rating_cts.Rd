\name{rating_cts}
\alias{rating_cts}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
rating_cts(cans, histogram = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cans}{
%%     ~~Describe \code{cans} here~~
}
  \item{histogram}{
%%     ~~Describe \code{histogram} here~~
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
Jack Simons <jack.simons@state.ma.us>
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
function(cans, histogram=TRUE) {;

# this function needs to be rewritten to work with a regular 254 field CANS dataframe;
# currently it requires a dataframe of ratings only; alternately, write a function to 
# return a ratings dataframe and use that as input for this

# A function to count the number of CANS items rated 0,1,2, and 
# 3, and return these values. Missing values (NA) are omitted. 
# By default, prints histograms of results. 
# Jack Simons <jack.simons@state.ma.us>
# revised 2010.05.28

# cans is the dataframe containing the CANS ratings of interest.
# It must contain no numeric values except for CANS ratings.
# histogram is a logical value which controls whether to 
# print histogram of results.
                                                                
# Compute the number of items with values of 0,1,2,3, and 
# missing. Also check the total of those options. Compute the 
# of twos and threes ("actionable ratings") to total ratings 
# ratio and compute the mean rating. The vector 
# clin.out.items contains index for items to be counted in 
# measuring clinical outcomes.                                                              
clin.out.items<- c(25,29:55)    
zeros <- rowSums(cans[,clin.out.items] == 0, na.rm=TRUE)
ones <- rowSums(cans[,clin.out.items] == 1, na.rm=TRUE)
twos <- rowSums(cans[,clin.out.items] == 2, na.rm=TRUE)
threes <- rowSums(cans[,clin.out.items] == 3, na.rm=TRUE)
NAs <- rowSums(is.na(cans[,clin.out.items]))
act.ratio <- round((twos+threes)/(zeros+ones+twos+threes),2)
all.sum <- sum(zeros, ones, twos, threes, NAs)
means <- round(rowMeans(cans[,clin.out.items], na.rm = TRUE), digits = 2)

if (histogram) {
  # Save all par settings which could be changed. Print 2x3 matrix
  #   of histrograms, restore old par settings.
  old.par <- par(no.readonly = TRUE) 
  par(mfrow=c(2,3))
  hist(zeros)
  hist(ones)
  hist(twos)
  hist(threes)
  hist(act.ratio)
  hist(means)
  par(old.par)
  }

# Create and return a dataframe of these values.
rating.cts <- data.frame(zeros, ones, twos, threes, NAs,all.sum,act.ratio, means)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
