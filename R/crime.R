#' @title U. S. Crimes
#' @name crime
#' @description 
#' This dataset gives rates of occurrence (per 100,000 people)
#' various serious crimes in each of the 50 U. S. states, 
#' originally from the United States Statistical Abstracts (1970). The data
#' were analyzed by John Hartigan (1975) in his book \emph{Clustering Algorithms} and 
#' were later reanalyzed by Friendly (1991). 
#' 
#' @docType data
#' @usage data(crime)
#' @format 
#' A data frame with 50 observations on the following 10 variables.
#' \describe{
#'   \item{\code{state}}{state name, a character vector}
#'   \item{\code{murder}}{a numeric vector}
#'   \item{\code{rape}}{a numeric vector}
#'   \item{\code{robbery}}{a numeric vector}
#'   \item{\code{assault}}{a numeric vector}
#'   \item{\code{burglary}}{a numeric vector}
#'   \item{\code{larceny}}{a numeric vector}
#'   \item{\code{auto}}{auto thefts, a numeric vector}
#'   \item{\code{st}}{state abbreviation, a character vector}
#'   \item{\code{region}}{region of the U.S., a factor with levels \code{Northeast} \code{South} \code{North Central} \code{West}}
#' }
#' @keywords dataset
#' @source 
#' The data are originally from the United States Statistical Abstracts (1970).
#' This dataset also appears in the SAS/Stat Sample library,
#' \emph{Getting Started Example for PROC PRINCOMP}, 
#' \url{https://support.sas.com/documentation/onlinedoc/stat/ex_code/131/princgs.html}, from which the
#' current copy was derived.
#' @references 
#' Friendly, M. (1991). \emph{SAS System for Statistical Graphics}. SAS Institute.
#'
#' Hartigan, J. A. (1975). \emph{Clustering Algorithms}. John Wiley and Sons.

#' @examples 
#' data(crime)
#' library(ggplot2)
#' crime.pca <- 
#'   crime |> 
#'   dplyr::select(where(is.numeric)) |>
#'   prcomp(scale. = TRUE)
#'
#' ggbiplot(crime.pca,
#'      labels = crime$st ,
#'      circle = TRUE,
#'      varname.size = 4,
#'      varname.color = "red") +
#'  theme_minimal(base_size = 14) 

NULL
