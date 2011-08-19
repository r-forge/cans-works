copy_to_xl <-
function(x) {
	write.table(x, "clipboard", sep="\t", col.names=NA)
	}

