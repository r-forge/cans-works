sample_cans <-
function(cans, sample.size) {

# cans is the dataframe from which you want to sample, 
# sample.size is the number of records you want to get.

row.index<-sample(length(cans[,1]), sample.size)
sample<-cans[row.index,]
}

