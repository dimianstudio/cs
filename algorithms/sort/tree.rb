# https://en.wikipedia.org/wiki/Tree_sort

require_relative '../../data_structures/tree/binary'

def tree_sort(array)
  return array if array.length <= 1

  tree = BinaryTree.new
  array.each { |el| tree.insert(el) }

  result = []
  tree.walk_in_order { |node| result.push(node.value) }

  result
end
