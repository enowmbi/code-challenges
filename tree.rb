class Tree
  attr_accessor :root

  def initialize(tree_node)
    @root = tree_node
  end

  def breadth_first_search_iterative
    results = ""
    return results if root.nil?

    queue = []
    queue << root
    until queue.empty?
      current = queue.shift
      results += "#{current.value} -> "
      queue << current.left_node if current.left_node
      queue << current.right_node if current.right_node
    end
    results
  end

  def depth_first_search_iterative
  end

  def depth_first_search_recursive(node)
    return "" if node.nil?

    print "#{node.value} ->"
    breadth_first_search_recursive(node.left_node)
    breadth_first_search_recursive(nod.right_node)
  end

  def sum_of_all_nodes_iterative
  end

  def sum_of_all_nodes_recursive
  end

  def tree_includes_iterative(target_value)
  end

  def tree_includes_recursive(target_value)
  end

  def tree_min_value_iterative
  end

  def tree_min_value_recursive
  end

  def max_root_to_leaf_path_sum
  end
end
