\name{shrinkcovmat.equal}
\alias{shrinkcovmat.equal}
\title{
Shrinking the Sample Covariance Matrix Towards a Diagonal Matrix with Equal Diagonal Elements 
}
\description{
This function provides a nonparametric Stein-type shrinkage estimator of the covariance matrix that is a linear combination of the sample covariance matrix and of a diagonal matrix with diagonal elements the average of the sample variances.
}
\usage{
shrinkcovmat.equal(data, centered = FALSE)
}
\arguments{
  \item{data}{
a numeric matrix containing the data.
}
  \item{centered}{
a logical indicating if the mean vector is the zero vector.
}
}
\details{
The rows of the data matrix \code{data} correspond to variables and the columns to subjects. 
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
Touloumis, A. (2015). Nonparametric Stein-type Shrinkage Covariance Matrix Estimators in High-Dimensional Settings. \emph{Computational Statistics and Data Analysis} \bold{83}, 251--261. 
}
\author{
Anestis Touloumis
}
\seealso{
\code{\link{shrinkcovmat.unequal}} and \code{\link{shrinkcovmat.identity}}.
}
\examples{
data(colon)
normal.group <- colon[,1:40]
colon.group <- colon[,41:62]
Sigma.normal <- shrinkcovmat.equal(normal.group)
Sigma.normal
Sigma.colon <- shrinkcovmat.equal(colon.group)
Sigma.colon
}

