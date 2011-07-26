# --------------------------------------------------------------------------------------
# gives author contact info and datestamp
# --------------------------------------------------------------------------------------
# Jack Simons <jack.simons@state.ma.us>
# 2:54 PM Tuesday, July 05, 2011

# Handy when updating metadata in scripts and functions.
# Parameter 'author' is a string with author name and email.

stamp <- function (author = 'Jack Simons <jack.simons@state.ma.us>') {
  cat(author, " \n", format(Sys.time(), "%A %B %d, %Y; %H:%M:%S"), sep='')
  }