class BinaryTree
  class Node
    attr_reader :value, :left, :right

    def initialize(value)
      @value = value
    end

    def insert(new_value)
      if new_value > value
        right.nil? ? @right = Node.new(new_value) : right.insert(new_value)
      elsif new_value <= value
        left.nil? ? @left = Node.new(new_value) : left.insert(new_value)
      end
    end
  end

  def initialize
    @root_node = nil
  end

  def insert(value)
    if @root_node
      @root_node.insert(value)
    else
      @root_node = Node.new(value)
    end
  end

  def walk_in_order(node = @root_node, &block)
    return unless node

    walk_in_order(node.left, &block)
    yield node
    walk_in_order(node.right, &block)
  end
end
