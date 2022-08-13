# frozen_string_literal: true

def dfs(graph, source)
  stack = [source]

  until stack.empty?
    current = stack.pop
    puts current
    neighbours = graph[current] || []
    neighbours.each do |neighbour|
      stack << neighbour
    end
  end
end
