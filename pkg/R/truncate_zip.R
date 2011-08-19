truncate_zip <-
function(cans, zip.col = 18) {
	zip <- cans[, zip.col]
	zip <- paste('0', zip, sep='')
	zip <- substr(zip, 1, 3)
	zip
}

