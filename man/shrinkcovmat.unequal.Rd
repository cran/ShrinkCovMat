\name{shrinkcovmat.unequal}
\alias{shrinkcovmat.unequal}
\title{
Shrinking the Sample Covariance Matrix Towards a Diagonal Matrix with Elements the Sample Variances.
}
\description{
This function provides a nonparametric Stein-type shrinkage estimator of the covariance matrix that is a linear combination of the sample covariance matrix and of a diagonal matrix with elements the corresponding elements of the sample covariance matrix.
}
\usage{
shrinkcovmat.unequal(data, centered = FALSE)
}
\arguments{
  \item{data}{
a numeric matrix containing the data.
}
  \item{centered}{
a logical indicating if the vectors are centered around their mean vector.
}
}
\details{
The rows of the data matrix \code{data} correspond to the variables and the columns to different subjects. 
}
\value{
Returns an object of the class "covmat" that has components:
\item{Sigmahat}{The Stein-type shrinkage estimator of the covariance matrix.}
\item{lambdahat}{The estimated optimal shrinkage intensity.}
\item{Sigmasam}{The sample covariance matrix.}
\item{Target}{The target covariance matrix.}
\item{centered}{If the data are centered around their mean vector.}
}
\references{
Touloumis, A. (2014). Nonparametric Stein-type shrinkage covariance matrix estimators in high-dimensional settings. \emph{Submitted}.
}
\author{
Anestis Touloumis
}
\seealso{
\code{\link{shrinkcovmat.equal}} and \code{\link{shrinkcovmat.identity}}.
}
\examples{
data(colon)
normal.group <- colon[,1:40]
colon.group <- colon[,41:62]
Sigma.normal <- shrinkcovmat.unequal(normal.group)
Sigma.normal
Sigma.colon <- shrinkcovmat.unequal(colon.group)
Sigma.colon
}

