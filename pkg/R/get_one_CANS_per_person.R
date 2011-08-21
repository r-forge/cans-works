get_one_CANS_per_person <-
function  (x, most_recent = TRUE) {

# gets one CANS per person
# jack.simons@state.ma.us
# Thursday June 23, 2011; 16:58:30

# Selects either the newest or oldest CANS for every person

# todo: Build in a check to confirm that column 32 is a date and that column 2 is a factor.

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

