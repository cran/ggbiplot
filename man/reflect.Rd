% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reflect.R
\name{reflect}
\alias{reflect}
\title{Reflect Columns in a Principal Component-like Object}
\usage{
reflect(pcobj, columns = 1:2)
}
\arguments{
\item{pcobj}{an object returned by \code{\link[stats]{prcomp}}, \code{\link[stats]{princomp}}, 
\code{\link[FactoMineR]{PCA}}, or \code{\link[MASS]{lda}}}

\item{columns}{a vector of indices of the columns to reflect}
}
\value{
The pca-like object with specified columns of the 
           variable loadings and observation scores multiplied
           by -1.
}
\description{
Principle component-like objects have variable loadings (the eigenvectors of the covariance/correlation matrix)
whose signs are arbitrary, in the sense that a given column can be 
reflected (multiplied by -1) without changing the fit.
}
\details{
This function allows one to reflect any columns of the variable
loadings (and corresponding observation scores). Coordinates for quantitative
supplementary variables are also reflected if present.
This is often
useful for interpreting a biplot, for example when a component (often the first) has all negative signs.
}
\examples{
data(crime)
crime.pca <- 
  crime |> 
  dplyr::select(where(is.numeric)) |>
  prcomp(scale. = TRUE)
  
 biplot(crime.pca)
 
 crime.pca <- reflect(crime.pca)  # reflect columns 1:2
 biplot(crime.pca)
}
\seealso{
\code{\link[stats]{prcomp}},  \code{\link[stats]{princomp}}, 
         \code{\link[FactoMineR]{PCA}}, \code{\link[MASS]{lda}}
}
\author{
Michael Friendly
}
