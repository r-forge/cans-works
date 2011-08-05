# --------------------------------------------------------------------------------------
# function select CANS items
# --------------------------------------------------------------------------------------
# Jack Simons <jack.simons@state.ma.us>
# 2:54 PM Tuesday, July 05, 2011

select_items <- function(cans, select.items.csv){

# A function that operates on a dataframe produced by 
#   read.cans(), and uses information in the file select.items 
#   to create a new dataframe with selected columns. Before 
#   selecting columns to keep, it creates a new field SED to 
#   replace the existing field 247 which currently holds the 
#   "end of record" character.

# Jack Simons <jack.simons@state.ma.us>
# revised 2010.05.16

# Find the file for the argument select.items.csv.
winDialog(type="okcancel", message="Click OK to open a file 
  dialog and to choose the file in csv format that you have 
  created to select CANS items. See the documentation for 
  further instructions.") 
select.items.csv <- file.choose()

# Initialized error flag.
fail = FALSE

# Read it into a dataframe and check for correct dimensions.
select<-read.table(select.items.csv, header=TRUE, sep=",", 
  quote="", fill=FALSE, comment.char="*")
if (nrow(select)==247&ncol(select)==6) {
  cat("Table has correct number of rows and columns.\n\n")
  }
else {
  cat("Table has wrong dimensions. Please recheck the source 
    file.\n")
  fail = TRUE
  }

if (fail == FALSE) {
  # Combine results of two SED definitions in cols 41 and 52 
  #   into one SED field in col 247.
  cans[,41]<-cans[,41]=="Y"
  cans[,52]<-cans[,52]=="Y"
  cans[,247]<-cans[,41] | cans[,52]

  # Replace column names.
  names(cans)<-select[,2]
  cat("Names replaced. \n")

  # Delete selected columns.
  retain.items<-select[,5]==TRUE
  cans<-cans[,retain.items]
  cat("Columns deleted. \n")

  # Return dataframe.
  cans
  }
}