# -----------------------------------------------------------------------------
# str() with list length = 300
# -----------------------------------------------------------------------------
# Jack Simons <jack.simons@state.ma.us> 
# Monday July 25, 2011; 22:42:55

# Supplies parameter so str() will give long enough (300) list to examine 
# 254 column cans dataframe. 

str <- function(x) {
	str(x, list.len = 300)
	}