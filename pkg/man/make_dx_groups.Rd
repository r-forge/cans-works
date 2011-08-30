\name{make_dx_groups}
\alias{make_dx_groups}

\title{
Creates a R list in which each element corresponds to a group of diagnoses.
}
\description{
Creates an R list in which each element corresponds to a group of diagnoses.
The set of diagnoses for each group should be in an Excel table, for copying.
Each group of diagnoses should be in an Excel column with no header.
dx.list is a list that is constructed incrementally using a loop.

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

\value{
Creates an R list in which each element corresponds to a group of diagnoses.
}

\author{
Jack Simons <jack.simons@state.ma.us>
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
