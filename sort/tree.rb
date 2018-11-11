# https://en.wikipedia.org/wiki/Tree_sort

require File.expand_path('../../tree/binary', __FILE__)

def tree_sort(array)
  tree = BinaryTree.new
  array.each { |el| tree.insert(el) }

  result = []
  tree.walk_in_order { |node| result.push(node.value) }

  result
end
