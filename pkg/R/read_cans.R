read_cans <-
function(
  tool = c('Under5', '5Over', ''), 
  status = c('COMPLETE', 'DOCUMENTED ON PAPER', 'INCOMPLETE BUT FINAL', ''),
  filename = "choose"
  )
  {

# Jack Simons <jack.simons@state.ma.us>
# 2:54 PM Tuesday, July 05, 2011

# Read the text file produced by the MA CBHI CANS system.
# The function performs minimal checks on the data file prior 
#   to import. 


# Choose the text file to import.
if (filename=='choose'){
  winDialog(
    type="okcancel", 
    "Click OK to choose the delimited text file to read. It must 
    be in the format exported by the CBHI CANS application."
    )
  txt.file <- file.choose()
  }
  else txt.file  <- filename
cat("\nFile to import is ", txt.file, "\n\n")

# Fail flag will be used to indicate if errors are found.
fail<- FALSE

# Check that all rows have 254 fields, and report bad row 
# numbers.
bad.field.counts <- which(count.fields(
  txt.file, sep="|", quote="", comment.char=""
  )!=254)
if (length(bad.field.counts)==0){
  cat("All records have correct field counts. \n\n")
}
else {
  cat(length(bad.field.counts), 
    " record(s) had bad field counts. \n")
  cat("Row numbers with bad field counts: ",
    bad.field.counts, "\n\n")
  fail <- TRUE
}

# Read in the values.
# It is OK to fill the line if fields are missing, because we 
# already tested for that error.
cans <- read.table(
  txt.file, sep="|", header=FALSE, quote="", 
  comment.char="", fill=TRUE
  )

# Check that MHID in column 2 is a 12 character string (col 2), 
# and return bad row numbers.
bad.col.2 <- which(nchar(as.character(cans[,2]))!=12)
if (length(bad.col.2)==0) {
  cat("All records have correct length for MassHealth ID. \n\n")
  }
else {
  cat(length(bad.col.2), 
    " record(s) had incorrect length for MassHealth ID. \n")
  cat("Row numbers with problem with MHID: ", bad.col.2, "\n\n")
  fail <- TRUE
  }

# Check that end of record is a caret (col 254), and return 
# bad row numbers.
bad.col.254 <- which(cans[,254]!="^")
if (length(bad.col.254)==0) {
  cat(
    "All records have correct character(s) in last column. \n\n"
    )
  }
else {
  cat(length(bad.col.254),
      " record(s) had incorrect character(s) in last column. 
      \n")
    cat("Row numbers with problem with end-of-record field: ",
      bad.col.254, "\n\n")
    fail <- TRUE
  }

# If errors were found, don't return an imported dataframe, 
# and warn the user; otherwise, return a dataframe.
if (fail==TRUE) {
  cat("Read failed due to errors listed above. 
    The function returned an empty data frame.\n")
  cat("Check the integrity of the text file you want to import. 
    \n")
  cat("Note: a row with bad field count may also cause other 
    errors. \n\n")
  }
else {
  cat("Read succeeded. ", nrow(cans), " records imported. \n\n")
  #Remove records that do not have the specified status
  specified.status <- cans[, 6] %in% status
  cat(sum(specified.status), "Records with the following status. All others dropped.\n", status, "\n")
  cans<-cans[specified.status, ]
  #Remove records that do not have the specified tool
  specified.tool <-cans[,53] %in% tool
  cat(sum(specified.tool), "Records for the following tool(s). All others dropped.\n", tool, "\n")
  cans<-cans[specified.tool, ]
  cans <- cans
  }
}

