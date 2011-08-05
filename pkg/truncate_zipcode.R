# -----------------------------------------------------------------------------
# drop all but first 3 digits of zipcode
# -----------------------------------------------------------------------------
# Jack Simons <jack.simons@state.ma.us> 
# Tuesday July 12, 2011; 17:38:19

# Retains only first 3 digits of zip per HIPAA Safe Harbor provision for 
# deidentification of PHI. Operates on a standard CANS dataframe and returns a 
# character vector whose length is = nrow of dataframe. Operates on column 18 unless
# the zip.col parameter is entered.

truncate_zip <- function(cans, zip.col = 18) {
	zip <- cans[, zip.col]
	zip <- paste('0', zip, sep='')
	zip <- substr(zip, 1, 3)
	zip
}