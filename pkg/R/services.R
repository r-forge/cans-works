serv_combination <- function #get the services used by the subject
(
### from a CANS dataframe, creates a list of services received by each child and then turns it into a list of logical vectors
cans, 
### a CANS dataframe
id_column=2,
### the index for the column containing the subject ID
service_column=31
### the index for the column containing the service indicator
) {
 
#   get the services for each id
  id <- cans[, id_column]
  services <- cans[, service_column]
  services_list <- by(services, id, function(x) unique(levels(factor(x))))
# remove redundancies
  service <- c("OP", "IHT", "ICC", "CBAT", "InPt", "Partial", "SOAP")
  unique_services_by_ID <- lapply(services_list, function(x) service %in% x)
  ID <- names(unique_services_by_ID)
  service_data <- t(as.data.frame(unique_services_by_ID))
  colnames(service_data) <- service
  rownames(service_data) <- ID
  invisible(service_data)
### a dataframe, one record per subject, of logical values for services used 
}
