rating.summary <-
function(cans, obs.id = 1, person.id = 2, obs.date = 32, items = 54:64) {

# Summarizes ratings for selected group of items, record by record.
# Computes the number of items with values of 0,1,2,3, and 
# missing. Computes the ratio of twos and threes ("actionable ratings") 
# to total ratings and computes the mean rating. 
# Returns a dataframe of same nrow as the input dataframe, with 7 columns,
# counting for each record the number of zeros, ones, twos, threes, NAs,
# ration of actionable items (2s and 3s) to total, and mean rating.
# Note that for records where no items are rated, the actionable ration will
# be NaN, and the mean will be NA.

person <- cans[, person.id]
observation <- cans[, obs.id]   
zeros <- rowSums(cans[,items] == 0, na.rm=TRUE)
ones <- rowSums(cans[,items] == 1, na.rm=TRUE)
twos <- rowSums(cans[,items] == 2, na.rm=TRUE)
threes <- rowSums(cans[,items] == 3, na.rm=TRUE)
NAs <- rowSums(is.na(cans[,items]))
act.ratio <- round((twos+threes)/(zeros+ones+twos+threes),2)
all.sum <- sum(zeros, ones, twos, threes, NAs)
means <- round(rowMeans(cans[,items], na.rm = TRUE), digits = 2)

# Create and return a dataframe of these values.
data.frame(person, observation, zeros, ones, twos, threes, NAs, all.sum, act.ratio, means)
}