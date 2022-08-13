# frozen_string_literal: true

def path?(graph, source, destination)
  stack = [source]
  until stack.empty?
    current = stack.pop
    return true if current == destination

    neighbours = graph[current] || []
    neighbours.each do |neighbour|
      stack << neighbour
    end
  end
  false
end

def path2?(graph, source, destination)
  queue = [source]
  until queue.empty?
    current = queue.shift
    return true if current == destination

    neighbours = graph[current] || []
    neighbours.each do |neighbour|
      queue << neighbour
    end
  end
  false
end
