\name{select_items}
\alias{select_items}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
select_items(cans, select.items.csv)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cans}{
%%     ~~Describe \code{cans} here~~
}
  \item{select.items.csv}{
%%     ~~Describe \code{select.items.csv} here~~
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
function(cans, select.items.csv){

# A function that operates on a dataframe produced by 
#   read.cans(), and uses information in the file select.items 
#   to create a new dataframe with selected columns. Before 
#   selecting columns to keep, it creates a new field SED to 
#   replace the existing field 247 which currently holds the 
#   "end of record" character.

# Jack Simons <jack.simons@state.ma.us>
# revised 2010.05.16

# Find the file for the argument select.items.csv.
winDialog(type="okcancel", message="Click OK to open a file 
  dialog and to choose the file in csv format that you have 
  created to select CANS items. See the documentation for 
  further instructions.") 
select.items.csv <- file.choose()

# Initialized error flag.
fail = FALSE

# Read it into a dataframe and check for correct dimensions.
select<-read.table(select.items.csv, header=TRUE, sep=",", 
  quote="", fill=FALSE, comment.char="*")
if (nrow(select)==247&ncol(select)==6) {
  cat("Table has correct number of rows and columns.\n\n")
  }
else {
  cat("Table has wrong dimensions. Please recheck the source 
    file.\n")
  fail = TRUE
  }

if (fail == FALSE) {
  # Combine results of two SED definitions in cols 41 and 52 
  #   into one SED field in col 247.
  cans[,41]<-cans[,41]=="Y"
  cans[,52]<-cans[,52]=="Y"
  cans[,247]<-cans[,41] | cans[,52]

  # Replace column names.
  names(cans)<-select[,2]
  cat("Names replaced. \n")

  # Delete selected columns.
  retain.items<-select[,5]==TRUE
  cans<-cans[,retain.items]
  cat("Columns deleted. \n")

  # Return dataframe.
  cans
  }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
