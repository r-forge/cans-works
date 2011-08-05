# -----------------------------------------------------------------------------
# creates diagnostic groups
# -----------------------------------------------------------------------------
# Jack Simons <jack.simons@state.ma.us> 
# Monday July 11, 2011; 10:44:07

# Creates a R list in which each element corresponds to a group of diagnoses.
# The set of diagnoses for each group should be in an Excel table, for copying.
# Each group of diagnoses should be in an Excel column with no header.

make_dx_groups <- function(number.of.groups) {
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