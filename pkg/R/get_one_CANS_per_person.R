get_one_CANS_per_person <-
function  (x, most_recent = TRUE) {
# first get order by date, either increasing or decreasing
  date.order <- order(x[, 32], decreasing=most_recent)
# now get order by MHID
  MHID.order <- order(x[, 2])
# order the records by date within MHID
  x <- x[order(date.order), ]
  x <- x[order(MHID.order), ]
# find the duplicates for each MHID
  dups <- duplicated(x[, 2])
# remove the duplicates  
  x <- x[!dups, ]
  }

