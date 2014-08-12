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
Each of the implemented shrinkage covariance matrix estimators is a convex linear combination of the sample covariance matrix and of a target matrix. Three options are allowed for the target matrix: (a) the diagonal matrix with diagonal elements the average of the sample variances (\code{\link{shrinkcovmat.equal}}), (b) the diagonal matrix with diagonal elements the corresponding sample variances (\code{\link{shrinkcovmat.unequal}}), and (c) the identity matrix (\code{\link{shrinkcovmat.identity}}). The optimal shrinkage intensity determines how much the sample covariance matrix will be shrunk towards the selected target matrix. The estimation process of the optimal shrinkage intensity is described in Touloumis (2014). 
}


\author{
Anestis Touloumis

Maintainer: Anestis Touloumis <Anestis.Touloumis@cruk.cam.ac.uk>
}

\references{
Touloumis, A. (2014). Nonparametric Stein-type Shrinkage Covariance Matrix Estimators in High-Dimensional Settings. \emph{Submitted}.
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
