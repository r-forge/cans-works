CA_name <-
function(x, show.name=TRUE, show.org=TRUE, 
                     firstname.col = 3, lastname.col = 4, org.col = 5) {
#   trims the white space after firstname and pastes with lastname
  if (show.name) x$CA <- paste(gsub(" +", "", x[, firstname.col]), x[, lastname.col], sep=' ')
#   paste the org onto the name, with comma separator
  if (show.org) x$CA <- paste(x$CA, x[, org.col], sep=', ')
  x$CA
  }

