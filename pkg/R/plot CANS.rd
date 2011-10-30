#	function plotCANS

plotCANS <- function (data, ID.column=2, date.column=32, groups.column=31, n=24, ...) {
# plot series of CANS outcomes for a random sample of children (5 Over);
# data is the CANS data frame; 
# ID.column is the column containing the individual ID (a factor);
# date.column is the time variable, should be a vector of dates;
# group.column would usually be the column denoting the service or provider 
# 	associated with the CANS data point. 
# ... allows you to pass additional parameters to xyplot()

require(lattice)
sample.set <- sample(dat$V2, 36)
sample.set <- subset(dat, dat$V2 %in% sample.set)
plt <- xyplot(out ~ V32 | V2, 
       data=sample.set,
       main='CANS scores for randomly selected youth',
       xlab='', ylab='summary score',
       type=c('g', 'p', 'r'),
       groups=V31,
       auto.key=list(
         space='bottom', columns=4
         )
       )
update(plt)
rm(samp)
}