stamp <-
function (author = 'Jack Simons <jack.simons@state.ma.us>') {
  cat(author, " \n", format(Sys.time(), "%A %B %d, %Y; %H:%M:%S"), sep='')
  }

