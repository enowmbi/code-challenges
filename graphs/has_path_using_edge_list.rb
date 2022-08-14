# frozen_string_literal: true

def path?(edge_list, source, target)
  visited = {}
  graph = build_graph(edge_list)
  stack = [source]
  until stack.empty?
    current = stack.pop
    visited[current] = true
    return true if current == target

    neighbours = graph[current] || []
    neighbours.each do |neighbour|
      stack << neighbour unless visited.key? neighbour
    end
  end
  false
end

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
