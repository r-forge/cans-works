recode_dx <-
function(cans, dx.col=90, dx.list) {
# cans is a standard CANS dataframe and cans.dx.col, an integer, is the column of diagnoses to recode.
# dx.list is a list of dx groupings created with make_dx_groups().
# A vector of diagnostic groups is returned, with length = nrow of the CANS database.

dx <- as.character(cans[, dx.col])
dx <- as.data.frame(dx, stringsAsFactors = FALSE)

for (dx.list.item in 1:length(dx.list)) {
  dx$group[dx$dx %in% dx.list[[dx.list.item]]] <- paste('grp', dx.list.item, sep='')
  }

head(dx, 50)
}
