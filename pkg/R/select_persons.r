select_persons <- function (cans, observations, person.id = 2) {

# Select persons by number of observations

# Select the subset of persons who have a specified number 
# of observations in the CANS dataframe

# cans is a CANS dataframe
# person.id is an integer, the column number of the person identifier
# observations is a vector of integers which are the desired number
# of observations; could be a single integer, a range, or any set of values

# Returns a dataframe where the first column is a character vector of person
# identifiers, and the second column is the number of observatrions associated
# with each person. Ordered by decreasing number of observations.

persons <- as.data.frame(table(cans[, person.id]))
persons <- persons[rev(order(persons[, 2])), ]
matching_persons <- !is.na(match(persons[, 2], observations))
persons <- persons[matching_persons==1, ]
colnames(persons) <- c('person_id', 'number_of_obs')
persons
}