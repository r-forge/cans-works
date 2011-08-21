stamp <-
function (author = 'Jack Simons <jack.simons@state.ma.us>') {

# Jack Simons <jack.simons@state.ma.us>
# 2:54 PM Tuesday, July 05, 2011
# gives author contact info and datestamp
# Handy when updating metadata in scripts and functions.
# Parameter 'author' is a string with author name and email.

  cat(author, " \n", format(Sys.time(), "%A %B %d, %Y; %H:%M:%S"), sep='')
  }