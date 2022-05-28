class LinkedList
  attr_accessor :root
  def initialize(node)
    @root = node
  end

  def add_node(value)
    Node.new(value)
  end

  def reverse_list
  end
  def traverse
    current = root
    until current  == nil
      p "#{current.value} ->"
    end
  end

  alias :to_s :traverse
end

class Node
  attr_accessor :next_node, :value

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
