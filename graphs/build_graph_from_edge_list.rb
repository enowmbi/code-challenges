# frozen_string_literal: true

# The graph is often represented as an adjacency list, but in some cases especially in undirected graphs.
# In such cases, you are given the edge list or list of edges and you create an adjacency list from it.

def build_graph(edge_list)
  graph = {}
  edge_list.each do |edge|
    a, b = edge
    graph[a] = [] unless graph.key? a
    graph[b] = [] unless graph.key? b

    graph[a] << b
    graph[b] << a
  end
  graph
end
