check_multiple_CANS_exports <-
function() {

# The CBHI CANS export function is limited to periods of up to seven days. Therefore, CANS data 
# over a long time period must be assembled from multiple export files representing differenct 
# slices of time. To ensure completeness of data, it is also important to check that the time 
# periods are contiguous and create a continuous, non-redundant set of records. Records exported 
# before a certain date in 11/2010 have fewer fields than those exported later, so each file must 
# be tested for the length of records and older records need to have blank fields added.

# Therefore, this script performs the following tasks:
	# 1.	Choose export files for import.
	# 2.	Check that the filenames indicate that the combined data will be continuous and nonredundant.
	# 3.	Import each text file into a data frame. Check the dataframe for record length and pad it out if needed.

# Assumes the time interval covered in the export file is accurately reflected in the filename 
# as in the following example:
# 	20090601-20090607.txt
# 	This file contains all records for the time interval from 6/1/2009 through 6/7/2009.

# Choose export files for import. Gather information about them
# (start and end dates, number of records, and whether they cover time periods 
# that are contiguous and nonredundant, and record length).
  winDialog(type = "okcancel", "Click OK to choose the files to import. They must be in the expected pipe-delimited format.")

  file.list <- choose.files()
	file.info <- data.frame(file.list, stringsAsFactors = FALSE)

# get start date	
	start.string<-substr(file.info[,1], nchar(file.info[,1])-20, nchar(file.info[,1])-13)
	start.date <- as.Date(start.string, format="%Y%m%d")
	file.info[,2] <- start.date
# get end date, days covered
	end.string<-substr(file.info[,1], nchar(file.info[,1])-11, nchar(file.info[,1])-4)
	end.date <- as.Date(end.string, format="%Y%m%d")
	file.info[,3] <- end.date
	file.info[,4] <- end.date - start.date + 1
# reorder files by start date, and check relationship of each file's end to next file's start
	file.info <- file.info[order(file.info[,2]),]
	for (index in 1:nrow(file.info)) file.info[index,5] <- (file.info[index+1,2]-file.info[index,3])
# get record lengths
	for (index in 1:nrow(file.info)) file.info[index,6] <- mean(count.fields(file.info[index,1], sep = "|", quote = "", comment.char = ""))
# show info on files to be imported	
	colnames(file.info) <- c("filename", "start_date", "end_date", "days", "offset", "rec_len")	
	cat('\n List of files checked: \n')
	print(file.info)
}

