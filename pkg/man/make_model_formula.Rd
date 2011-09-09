\name{make_model_formula}
\alias{make_model_formula}

\title{
Constructs a model formula
}

\description{
Constructs a model formula based on two vectors of integers, which contain the indices 
of the dataframe columns to be selected in the left side and right side of the model.
}

\usage{
make_model_formula(leftvars = 0, rightvars = 0, data)
}

\arguments{
  \item{leftvars}{
a vector of integers, which contain the indices of the dataframe columns 
to be selected in the left side, or zero if nothing on the left side
}
  \item{rightvars}{
a vectors of integers, which contain the indices of the dataframe columns 
to be selected in the right side, or zero if nothing on the right side
}
  \item{data}{
the dataframe on which the model will be used
}
}

\details{
Note that the formula uses the + operator for all variables; user must make any needed 
edits to the model formula manually. To make either side of the formula blank, use 0 for the index value.
The "data" parameter denotes the dataframe on which the model will be used.
}

\value{
Returns a character string
}

\author{
Jack Simons <jack.simons@state.ma.us>
}

\examples{
## none at this time
}