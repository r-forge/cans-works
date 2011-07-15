# --------------------------------------------------------------------------------------
# days since first assessment
# --------------------------------------------------------------------------------------
# Jack Simons <jack.simons@state.ma.us>
# 2:54 PM Tuesday, July 05, 2011

# This is a CANS-specific function that creates a vector of integers 
# 	representing days since first assessment. The vector can replace 
# 	Date of Assessment for HIPAA deindentification purposes.
# 	The vector length is same as number of rows of CANS dataframe.
# Assumes a 254 field CANS dataframe named cans.test where:
# 	MHID is field 2
# 	Date of Assessment is field 32

days_since_first_assessment <- function (cans) {

# Make sure MHID is factor:
cans[,2]<-as.factor(cans[,2])

# Make sure Date of Assessment is of class Date:
cans[,32] <- as.Date(cans[,32],format="%m/%d/%Y")

# Note: in next step the single bracket [] is used to identify a list of columns
# in data frame, as required in aggregate(). This step creates a dataframe with
# nrow equal to number of initial dates of assessment. This dataframe allows us to
# translate from Date of Assessment to days elapsed since first.
date.key<- aggregate(cans[32], by=cans[2], min)

# Create the vector of elapsed days (integers) that can replace the date of assessment.
# (you might also do this with merge() which uses match() internally;
# the following method is straightforward and fast enough for our purposes, 
# but see Adler for faster methods using environments)
init.date <- date.key[match(cans[, 2], date.key[, 1]), 2]
# calculate the diffence in dates
days <- as.numeric(cans[, 32]-init.date)
}
