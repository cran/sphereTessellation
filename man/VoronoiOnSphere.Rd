% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/voronoi.R
\name{VoronoiOnSphere}
\alias{VoronoiOnSphere}
\title{Spherical Voronoï tessellation}
\usage{
VoronoiOnSphere(vertices, radius = 1, center = c(0, 0, 0), iterations = 5L)
}
\arguments{
\item{vertices}{vertices, a numeric matrix with three columns}

\item{radius}{radius of the sphere, a positive number; the vertices will
be projected on this sphere}

\item{center}{center of the sphere, a numeric vector of length three; the
vertices will be projected on this sphere}

\item{iterations}{positive integer, the number of iterations used to
construct the meshes of the spherical faces}
}
\value{
An unnamed list whose each element corresponds to a Voronoï face and
  is a named list with three fields:
  \itemize{
    \item \code{site}, the coordinates of the Voronoï site of the face;

    \item \code{cell}, a numeric matrix providing the coordinates of the
    vertices of the face;

    \item \code{mesh}, a mesh of the face used for plotting in the function
    \code{\link{plotVoronoiOnSphere}}.
  }
}
\description{
Computes a spherical Voronoï tessellation.
}
\details{
First the Delaunay triangulation is computed, then the Voronoï
  tessellation is obtained by duality.
}
\examples{
library(sphereTessellation)
library(rgl)
if(require(cooltools)) {
vertices <- fibonaccisphere(150L)
vor <- VoronoiOnSphere(vertices)
\donttest{open3d(windowRect = 50 + c(0, 0, 512, 512), zoom = 0.8)
plotVoronoiOnSphere(vor, colors = "random")}
}
}
\seealso{
\code{\link{plotVoronoiOnSphere}}
}
