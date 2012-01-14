read_agency <- function(filename = "choose") {
    
    #   identify the file to import
    if (filename == "choose") {
        winDialog(type = "okcancel", "Click OK to choose the delimited text file to read. It must \n    be in the format exported by the CBHI agencyexp application.")
        txt.file <- file.choose()
    } else txt.file <- filename
    cat("\nFile to import is ", txt.file, "\n\n")
    
    # check if all records have the correct length
    fail <- FALSE
    bad.field.counts <- which(count.fields(txt.file, sep = "|", 
        quote = "", comment.char = "") != 102)
    if (length(bad.field.counts) == 0) {
        #       field counts are OK
        cat("All records have correct field counts. \n\n")
    } else {
        #       field counts are not OK
        cat(length(bad.field.counts), " record(s) had bad field counts. \n")
        cat("Row numbers with bad field counts: ", bad.field.counts, 
            "\n\n")
        fail <- TRUE
    }
    
    #     read the file
    agencyexp <- read.table(txt.file, sep = "|", header = FALSE, quote = "", 
        comment.char = "", fill = TRUE)
    
    # check if last character of each record is correct
    bad.col.102 <- which(agencyexp[, 102] != "^")
    if (length(bad.col.102) == 0) {
        #       last character OK
        cat("All records have correct character(s) in last column. \n\n")
    } else {
        #       last character not OK
        cat(length(bad.col.102), " record(s) had incorrect character(s) in last column. \n      \n")
        cat("Row numbers with problem with end-of-record field: ", 
            bad.col.102, "\n\n")
        fail <- TRUE
    }
    
    if (fail == TRUE) {
        #       tell the user it didn't work
        cat("Read failed due to errors listed above. \n    The function returned an empty data frame.\n")
        cat("Check the integrity of the text file you want to import. \n    \n")
        cat("Note: a row with bad field count may also cause other \n    errors. \n\n")
    } else {
        #       tell the user all is well
        cat("Read succeeded. ", nrow(agencyexp), " records imported. \n\n")
        header <- "agencyexp_ID, MassHealth ID, Member Name, MH-client Date-of-Birth, Member Age, Gender, MH-client Zip, Assessment Date, Assessment Reason, agencyexp status, Status Date, DSS Category Care Code, DSS Category Care Description, DSS Category Care effective date, DSS Category Care end date, DYS Category Care Code, DYS Category Care Description, DYS Category Care effective date, DYS Category Care end date, State Agency Involvement DMH, DMH Aid Category, DMH Region, DMH Family Size, State Agency Involvement DSS, DSS Aid Category, DSS Region, DSS Family Size, State Agency Involvement DYS, DYS Aid Category, DYS Region, DYS Family Size, State Agency Involvement DPH, DPH Aid Category, DPH Region, DPH Family Size, State Agency Involvement DMR, DDS Aid Category, DDS Region, DDS Family Size, State Agency Involvement DTA, DTA Aid Category, DTA Region, DTA Family Size, State Agency Involvement MHO , MHO Aid Category, MHO Region, MHO Family Size, State Agency Involvement MCB, MCB Aid Category, MCB Region, MCB Family Size, State Agency Involvement MCDHH , MCDHH Aid Category, MCDHH Region, MCDHH Family Size, State Agency Involvement MRC, MRC Aid Category, MRC Region, MRC Family Size, State Agency Involvement ORI, ORI Aid Category, ORI Region, ORI Family Size, MH-client SSN Primary, MH-client Race, MH-client Race Specify, MH-client Race2, MH-client Race2 Specify, MH-client Race3, MH-client Race3 Specify, MH-client Ethnicity, MH-client Ethnicity Specify, MH-client Ethnicity2, MH-client Ethnicity2 Specify, MH-client Ethnicity3, MH-client Ethnicity3 Specify, Primary Language, Primary Language Specify, Language at home, Language at Home Specify, Current Living Situation, Current Living Situation Other Text, SED Part I, SED Part II, ICC Enrolled, Place of Assessment, Place of Assessment Other, Level of Care, Referred by, Referred by Other, Certified Assessor userid, CA first_name, CA last_name, Certified Assessor Org ID, Certified Assessor Organization, Current Assignment Plan primary code, Current Assignment Plan primary description, Current Assignment Plan secondary code, Current Assignment Plan secondary description, Record Added, Record Last Modified, End of Record"
        colnames(agencyexp) <- strsplit(header, ', ')
        return(agencyexp)
    }
}