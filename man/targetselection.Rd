\name{targetselection}
\alias{targetselection}
\title{
Rule of Thumb for Target Matrix Selection
}
\description{
This function implements the rule of thumb proposed for selecting the target matrix proposed by Touloumis(2014). This is useful when the optimal shrinkage intensities for the three target matrices are of similar magnitude. If so, one could inspect the average and the range of the sample variances in order to adopt one of the three target matrices.
}
\usage{
targetselection(data, centered = FALSE)
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
Prints the estimated optimal shrinkage intensities and the range and the average of the sample variances.
}
\references{
Touloumis, A. (2014). Nonparametric Stein-type Shrinkage Covariance Matrix Estimators in High-Dimensional Settings. \emph{Computational Statistics and Data Analysis}, \url{http://dx.doi.org/10.1016/j.csda.2014.10.018}.
}
\author{
Anestis Touloumis
}
\examples{
data(colon)
normal.group <- colon[,1:40]
colon.group <- colon[,41:62]
targetselection(normal.group)
## Similar intensities, the range of the sample variances is small 
## and the average is not close to one. The scaled identity matrix 
## seems to be the most appropriate target matrix for the normal
## group
targetselection(colon.group)
## Similar intensities, the range of the sample variances is small 
## and the average is not close to one. The scaled identity matrix 
## seems to be the most appropriate target matrix for the colon
## group
}