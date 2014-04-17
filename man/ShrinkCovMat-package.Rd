\name{ShrinkCovMat-package}
\alias{ShrinkCovMat-package}
\alias{ShrinkCovMat}
\docType{package}
\title{
Shrinkage Covariance Matrix Estimators
}
\description{
This package provides nonparametric Stein-type shrinkage estimators of the covariance matrix that are suitable and statistically efficient when the number of variables is larger than the sample size. 
These estimators are non-singular and well-conditioned regardless of the dimensionality.
}

\details{
The Stein-type shrinkage covariance estimator is a convex linear combination of the sample covariance matrix and of a target matrix. This package implements the following three option for the target matrix: (a) a diagonal matrix with elements the average of the diagonal elements of the sample covariance matrix (\code{\link{shrinkcovmat.equal}}),
(b) a diagonal matrix with elements the corresponding diagonal elements of the sample covariance matrix (\code{\link{shrinkcovmat.unequal}}), and (c) the identity matrix (\code{\link{shrinkcovmat.identity}}). The optimal shrinkage intensity determines how much the sample covariance matrix will be shrunk towards the selected target matrix. Estimation of the shrinkage intensity is described in Touloumis (2014). 
}


\author{
Anestis Touloumis

Maintainer: Anestis Touloumis <Anestis.Touloumis@cruk.cam.ac.uk>
}

\references{
Touloumis, A. (2014). Nonparametric Stein-type shrinkage covariance matrix estimators in high-dimensional settings. \emph{Submitted}.
}
\keyword{ package }
\seealso{
\code{\link{shrinkcovmat.equal}}, \code{\link{shrinkcovmat.unequal}} and \code{\link{shrinkcovmat.identity}}.
}
\examples{
data(colon)
## Estimating the covariance matrix for the normal tissue group.
normal.group <- colon[,1:40]
Sigma1 <- shrinkcovmat.equal(normal.group)
Sigma1
Sigma2 <- shrinkcovmat.identity(normal.group)
Sigma2
Sigma3 <- shrinkcovmat.unequal(normal.group)
Sigma3
}
