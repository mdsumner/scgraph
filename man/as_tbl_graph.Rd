% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidygraph.R
\name{as_tbl_graph}
\alias{as_tbl_graph}
\alias{as_tbl_graph.SC}
\alias{as_tbl_graph.sf}
\title{Convert to tidygraph.}
\usage{
\method{as_tbl_graph}{SC}(x, ...)

\method{as_tbl_graph}{sf}(x, ...)
}
\arguments{
\item{x}{model}

\item{...}{other args}
}
\description{
Convert to tidygraph.
}
\examples{
library(tidygraph)
library(scgraph)
data("minimal_mesh", package = "silicate")
as_tbl_graph(minimal_mesh)
library(silicate)  
umodel <- SC(as_tbl_graph(minimal_mesh))
#gibble.PATH <- function(x, ...) {
#inner_join(x[["path"]], x[["path_link_vertex"]] \%>\% group_by(path) \%>\% summarize(nrow = n()) ) \%>\%
#  dplyr::mutate(ncol = 2, type = "MULTILINESTRING")
#}
#library(gibble)
#geomap <- gibble(prim \%>\% PATH())
#silicate:::build_sf()
## some kind of round trip

}
