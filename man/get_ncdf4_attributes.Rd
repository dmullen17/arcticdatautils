% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/attributes.R
\name{get_ncdf4_attributes}
\alias{get_ncdf4_attributes}
\title{Get a data.frame of attributes from a NetCDF object}
\usage{
get_ncdf4_attributes(nc)
}
\arguments{
\item{nc}{(ncdf4/character) Either a ncdf4 object or a file path.}
}
\value{
(data.frame) A data.frame of the attributes.
}
\description{
Get a data.frame of attributes from a NetCDF object.
}
\examples{
\dontrun{
get_ncdf4_attributes("./path/to/my.nc")
}
}
