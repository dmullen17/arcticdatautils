% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/editing.R
\name{update_package_object}
\alias{update_package_object}
\title{Update a data object and associated resource map and metadata}
\usage{
update_package_object(mn, data_pid, new_data_path, resource_map_pid,
  format_id = NULL, public = TRUE, use_doi = FALSE, ...)
}
\arguments{
\item{mn}{(MNode) The Member Node of the data package.}

\item{data_pid}{(character) PID for data object to update.}

\item{new_data_path}{(character) Path to new data object.}

\item{resource_map_pid}{(character) PID for resource map to update.}

\item{format_id}{(character) Optional. The format ID to set for the object.
When not set, \code{\link[=guess_format_id]{guess_format_id()}} will be used
to guess the format ID. Should be a \href{https://cn.dataone.org/cn/v2/formats}{DataONE format ID}.}

\item{public}{(logical) Optional. Make the update public. If \code{FALSE},
will set the metadata and resource map to private (but not the data objects).
This applies to the new metadata PID and its resource map and data object.
Access policies are not affected.}

\item{use_doi}{(logical) Optional. If \code{TRUE}, a new DOI will be minted.}

\item{...}{Other arguments to pass into \code{\link[=publish_update]{publish_update()}}.}
}
\value{
(character) Named character vector of PIDs in the data package, including PIDs
for the metadata, resource map, and data objects.
}
\description{
This function updates a data object and then automatically
updates the package resource map with the new data PID. If an object
already has a \code{dataTable}, \code{otherEntity}, or \code{spatialVector}
with a working physical section, the EML will be updated with the new physical.
It is a convenience wrapper around \code{\link[=update_object]{update_object()}} and \code{\link[=publish_update]{publish_update()}}.
}
\examples{
\dontrun{
cnTest <- dataone::CNode("STAGING")
mnTest <- dataone::getMNode(cnTest,"urn:node:mnTestARCTIC")

pkg <- create_dummy_package_full(mnTest, title = "My package")

file.create("new_file.csv")
update_package_object(mnTest, pkg$data[1], "new_file.csv", pkg$resource_map, format_id = "text/csv")
file.remove("new_file.csv")
}
}
\seealso{
\code{\link[=update_object]{update_object()}} \code{\link[=publish_update]{publish_update()}}
}
