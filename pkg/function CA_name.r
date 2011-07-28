# --------------------------------------------------------------------------------------------------
# combine CA first and last names and orgs into one new field
# --------------------------------------------------------------------------------------------------
# Jack Simons <jack.simons@state.ma.us>
# 11:31 AM Tuesday, July 05, 2011

# assumes a CANS file where the relevant columns are by default 3,4 and 5
CA_name  <- function(x, show.name=TRUE, show.org=TRUE, 
                     firstname.col = 3, lastname.col = 4, org.col = 5) {
#   trims the white space after firstname and pastes with lastname
  if (show.name) x$CA <- paste(gsub(" +", "", x[, firstname.col]), x[, lastname.col], sep=' ')
#   paste the org onto the name, with comma separator
  if (show.org) x$CA <- paste(x$CA, x[, org.col], sep=', ')
  x$CA
  }