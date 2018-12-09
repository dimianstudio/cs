require 'test_helper'
require_relative '../../../data_structures/tree/binary'

describe BinaryTree do
  subject { BinaryTree.new }

  before do
    subject.insert(10)
    subject.insert(2)
    subject.insert(5)
    subject.insert(4)
    subject.insert(8)
    subject.insert(1)
    subject.insert(0)
    subject.insert(7)
    subject.insert(8)
  end

  it 'should walk in order by the tree' do
    result = []
    subject.walk_in_order { |node| result.push(node.value) }
    result.must_equal [0, 1, 2, 4, 5, 7, 8, 8, 10]
  end
end
