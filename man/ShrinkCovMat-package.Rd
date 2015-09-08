\name{ShrinkCovMat-package}
\alias{ShrinkCovMat-package}
\alias{ShrinkCovMat}
\docType{package}
\title{
Shrinkage Covariance Matrix Estimators
}
\description{
This package provides nonparametric Stein-type shrinkage estimators of the covariance matrix that are suitable and statistically efficient when the number of variables is larger than the sample size. These estimators are non-singular and well-conditioned regardless of the dimensionality.
}

\details{
Each of the implemented shrinkage covariance matrix estimators is a convex linear combination of the sample covariance matrix and of a target matrix. Three options are allowed for the target matrix: (a) the diagonal matrix with diagonal elements the average of the sample variances (\code{\link{shrinkcovmat.equal}}), (b) the diagonal matrix with diagonal elements the corresponding sample variances (\code{\link{shrinkcovmat.unequal}}), and (c) the identity matrix (\code{\link{shrinkcovmat.identity}}). The optimal shrinkage intensity determines how much the sample covariance matrix will be shrunk towards the selected target matrix. Estimation of the corresponding optimal shrinkage intensities is described in Touloumis (2015). The function (\code{\link{targetselection}}) might be useful for selecting one of the above target matrices.
}


\author{
Anestis Touloumis

Maintainer: Anestis Touloumis <A.Touloumis@brighton.ac.uk>
}

\references{
Touloumis, A. (2015). Nonparametric Stein-type Shrinkage Covariance Matrix Estimators in High-Dimensional Settings. \emph{Computational Statistics and Data Analysis} \bold{83}, 251--261. 
}
\keyword{ package }
\seealso{
\code{\link{shrinkcovmat.equal}}, \code{\link{shrinkcovmat.unequal}}, \code{\link{shrinkcovmat.identity}} and \code{\link{targetselection}}.
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
