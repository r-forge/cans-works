sample_cans <-
function(cans, sample.size) {

# sample a CANS dataframe
# Jack Simons <jack.simons@state.ma.us>
# 2:54 PM Tuesday, July 05, 2011

# cans is the dataframe from which you want to sample, 
# sample.size is the number of records you want to get.

row.index<-sample(length(cans[,1]), sample.size)
sample<-cans[row.index,]
}