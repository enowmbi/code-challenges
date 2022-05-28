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
    values = ""
    while(current != nil)
     values += current.value + " ->"
     current = current.next_node
    end
    values
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
