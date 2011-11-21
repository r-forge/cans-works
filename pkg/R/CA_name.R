CA_name <-function
###	Creates a single character string with assessor firstname, lastname and organization
(x,
###	the CANS dataframe 
show.name=TRUE,
### logical, whether to include name
show.org=TRUE,
###	logical, whether to include org
firstname.col = 3,
### numeric, column index for lastname
org.col = 5
### numeric, column index for organization
){
#   trims the white space after firstname and pastes with lastname
  if (show.name) x$CA <- paste(gsub(" +", "", x[, firstname.col]), x[, lastname.col], sep=' ')
#   paste the org onto the name, with comma separator
  if (show.org) x$CA <- paste(x$CA, x[, org.col], sep=', ')
  x$CA
###	returns a vector of length=nrow of original dataframe
  }

