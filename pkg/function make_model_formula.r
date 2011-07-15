# --------------------------------------------------------------------------------------
# create a simple model formula using large number of variables
# --------------------------------------------------------------------------------------
# Jack Simons <jack.simons@state.ma.us>
# 2:54 PM Tuesday, July 05, 2011

# Constructs a model formula based on two vectors, which contain the indices of the dataframe columns to be selected in the model.
# Note that the formula uses the + operator for all variables; user must make any needed edits manually.
# To make either side of the formula blank, use 0 for the index value.

make_model_formula <- function(leftvars=0, rightvars=0, data) {
leftstring <- paste(names(data)[leftvars], collapse=" + ")
# print(c("leftvars:", paste(leftvars, collapse=" ")))
# print(c("leftstring:", leftstring))
rightstring <- paste(names(data)[rightvars], collapse=" + ")
# print(c("rightvars:", paste(rightvars, collapse=" ")))
# print(c("rightstring:", rightstring))
model<-paste(leftstring, " ~ ", rightstring)
model}