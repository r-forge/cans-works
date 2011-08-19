check_CANS_export <-
function () {
winDialog(type = "okcancel", "Click OK to choose the delimited \n  text file to read. It must be in the format exported by the \n  CBHI CANS application.")
txt.file <- file.choose()
cat("\nFile to check is ", txt.file, "\n\n")

rec.length <- count.fields(txt.file, sep = "|", quote = "", comment.char = "")
cat('Minimum record length was: ', min(rec.length), '\n', sep='')
cat('Maximum record length was: ', max(rec.length), '\n\n', sep='')
}

