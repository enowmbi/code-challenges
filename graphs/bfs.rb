# frozen_string_literal: true

def bfs(graph, source)
  queue = [source]

  until queue.empty?
    current = queue.shift
    puts current
    neighbours = graph[current] || []
    neighbours.each do |neighbour|
      queue << neighbour
    end
  end
end
