#  function plotCANS

plotCANS <- function (data, 
                      sample.size=24, show.ID=FALSE, 
                      ID.column=2, date.column=32,
                      layout.plan=c(6,4,1),
                      groups.column=31, 
                      use.color=T,
                      ...) {
# plot series of CANS outcomes for a random sample of children (5 Over);
# sample.size is self-explanatory
# show.ID is logical and should be set to TRUE if you want the ID to appear 
#   in the strip plot; default is FALSE for privacy to prevent display of 
#   client identifier; 
# data is the CANS data frame; 
# ID.column is the column containing the individual ID (a factor);
#   layout.plan is the panel layout (see lattice documentation)
# date.column is the time variable, should be a vector of dates;
# group.column would usually be the column denoting the service or provider 
# 	associated with the CANS data point. 
# use.color is logical, set to F so points will display as symbols
# ... allows you to pass additional parameters to xyplot()

require(lattice)

# set to display points in black and white
dev.off()
trellis.device(color=use.color)

# get observations from a sample of individuals
sample.set <- sample(dat$V2, sample.size)
sample.set <- subset(dat, dat$V2 %in% sample.set)

plt <- xyplot(out ~ V32 | if (show.ID) factor(V2) else V2, 
       data=sample.set,
       main='CANS scores for randomly selected youth',
       xlab='', ylab='summary score',
#      show grid, points and regression line
       type=c('g', 'p', 'r'),
       groups=data[, groups.column],
       layout=layout.plan,
       strip=strip.custom(var.name='selected child'),      
       auto.key=list(
         space='bottom', columns=7
         )
       )

update(plt)

}