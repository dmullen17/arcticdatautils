% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eml.R
\name{eml_geographic_coverage}
\alias{eml_geographic_coverage}
\title{Create an EML geographicCoverage section}
\usage{
eml_geographic_coverage(description, north, east, south, west)
}
\arguments{
\item{description}{(character) A textual description.}

\item{north}{(numeric) North bounding coordinate.}

\item{east}{(numeric) East bounding coordinate.}

\item{south}{(numeric) South bounding coordinate.}

\item{west}{(numeric) West bounding coordinate.}
}
\value{
(geographicCoverage) The new geographicCoverage section.
}
\description{
A simple way to create an EML geographicCoverage section.
}
\details{
For a bounding box, all coordinates should be unique.
For a single point, the North and South bounding coordinates should be the same and
the East and West bounding coordinates should be the same.

Note that EML::set_coverage() provides the same (and more) functionality
}
