make_model_formula <-
function(leftvars=0, rightvars=0, data) {
leftstring <- paste(names(data)[leftvars], collapse=" + ")
# print(c("leftvars:", paste(leftvars, collapse=" ")))
# print(c("leftstring:", leftstring))
rightstring <- paste(names(data)[rightvars], collapse=" + ")
# print(c("rightvars:", paste(rightvars, collapse=" ")))
# print(c("rightstring:", rightstring))
model<-paste(leftstring, " ~ ", rightstring)
model}

