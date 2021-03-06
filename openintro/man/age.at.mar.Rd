\name{age.at.mar}
\alias{age.at.mar}
\alias{ageAtMar}
\alias{age_at_mar}
\docType{data}
\title{
Age at first marriage of 5,534 US women.
}
\description{
Age at first marriage of 5,534 US women who responded to the National Survey of Family Growth (NSFG) conducted by the CDC in the 2006 and 2010 cycle.
}
\usage{data(age.at.mar)}
\format{
  A data frame with 5,534 observations and 1 variable.
  \describe{
	\item{\code{age}}{Age a first marriage.} 	}
}
\source{
National Survey of Family Growth, 2006-2010 cycle, \url{http://www.cdc.gov/nchs/nsfg/nsfg_2006_2010_puf.htm}.
}
\examples{
data(age.at.mar)
histPlot(age.at.mar$age)
}
\keyword{datasets}
