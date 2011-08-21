paste_from_xl <-
function () {

# paste from Excel via clipboard
# Jack Simons <jack.simons@state.ma.us>
# Monday July 25, 2011; 22:42:55

# Read from Excel via clipboard
# From R Reference Card by Tom Short:
# 	Most of the I/O functions have a file argument. 
# 	This can often be a character string naming a file or a connection.
# 	file="" means the standard input or output. 
# 	Connections can include files, pipes, zipped files, and R variables.
# 	On windows, the file connection can also be used with description = "clipboard". 

	read.delim("clipboard", header = FALSE)
	}

