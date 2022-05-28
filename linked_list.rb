class LinkedList
  attr_accessor :root

  def initialize(node)
    @root = node
  end

  def add_node(value)
    Node.new(value)
  end

  def reverse_list
    current = next_node = root
    previous = nil

    until current.next_node.nil?
      next_node = current.next_node
      current.next_node = previous
      previous = current
      current = next_node
    end

    @root = previous
  end

  def traverse
    current = root
    values = ''
    until current.nil?
      values += "#{current.value} -> "
      current = current.next_node
    end
    values
  end

  alias to_s traverse
end

class Node
  attr_accessor :next_node, :value

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
