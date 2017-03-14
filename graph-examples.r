prim <- sc::PRIMITIVE(nc[c(9, 15, 24,  5, 16, 31), ])
library(scgraph)
ig <- scgraph::sc_as_igraph(prim) 
## this is unlikely to be the right order
E(ig)$segment <- prim$segment$segment_

ggraph(ig) + ggraph::geom_edge_link(aes(label = segment_))

## find vertices that are nodes
nodes <- sc_node(prim)

plot(igraph::induced_subgraph(ig, nodes$vertex_) )
# ## process all paths into arcs
# 
# all_paths <- sc_path(prim) %>% select(path_, object_) #distinct(path_)
# for (ipath in seq_len(nrow(all_paths))) {
#   all_paths %>% slice(ipath) %>% left_join(prim$path_link_vertex) %>% inner_join(nodes)
# }