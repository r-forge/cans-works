# --------------------------------------------------------------------------------------
# replace factor in CANS with a random identifier
# --------------------------------------------------------------------------------------
# Jack Simons <jack.simons@state.ma.us>
# rev 2011-07-04 18:38:41 EDT

replace_factor_with_random_id<- function(cans, target_col) {
  
# cans should be a 254 field CANS dataframe where the factor to be replaced
# is in field indexed by target_col.
# We want to create a vector of randomly assigned integers that can replace the factor. 
# The vector must have length equal to number of rows in CANS dataframe.
# The vector must have number of distinct values equal to number of levels of target column.

# Ensure the specified column in a factor and take its levels.
factor.levels <- levels(factor(cans[, target_col]))

# Create a random identifier to match each value in MHID; using the sample() 
# function randomizes their order.
newID <- sample(length(factor.levels))

# Make a dataframe that translates from one to the other and display first 50 
# rows to check it.
translate <- data.frame(factor.levels, newID)

# Create the vector of integers that can replace the target field.
# (you might also do this with merge() which uses match() internally;
# the following method is straightforward and fast enough for our purposes, 
# but see Adler for faster methods using environments)
ID <- translate[match(cans[, target_col], translate[, 1]), "newID"]

}
