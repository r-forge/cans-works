rating.summary <-
function(cans, obs.id = 1, person.id = 2, obs.date = 32, items = c(54:64, 66:75, 77:88)) {

# Summarizes ratings for selected group of items, record by record.
# Computes the number of items with values of 0,1,2,3, and 
# missing. Computes the ratio of twos and threes ("actionable ratings") 
# to total ratings and computes the mean rating. 
# Returns a dataframe of same nrow as the input dataframe, with 7 columns,
# counting for each record the number of zeros, ones, twos, threes, NAs,
# percent of actionable items (2s and 3s) to total, mean rating (times ten),
# and squareroot of mean rating (transforms distribution to be closer to normal).
# Then scale this value so its possible range is 0 to 10.
# Note that for records where no items are rated, the actionable percent will
# be NaN, and the mean and its squareroot will be NA.

person <- cans[, person.id]
observation <- cans[, obs.id]
date <- cans[, obs.date]
zeros <- rowSums(cans[,items] == 0, na.rm=TRUE)
ones <- rowSums(cans[,items] == 1, na.rm=TRUE)
twos <- rowSums(cans[,items] == 2, na.rm=TRUE)
threes <- rowSums(cans[,items] == 3, na.rm=TRUE)
NAs <- rowSums(is.na(cans[,items]))
act.pct <- 100 * (twos + threes) / (zeros + ones + twos + threes)
all.sum <- sum(zeros, ones, twos, threes, NAs)
means <- 10 * rowMeans(cans[,items], na.rm = TRUE)
out <- (means ^ 0.5) * 10 / sqrt(30)

# Create and return a dataframe of these values.
data.frame(person, observation, date, zeros, ones, twos, threes, NAs, all.sum, act.pct, means, out)
}