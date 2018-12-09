require 'test_helper'
require_relative '../../../data_structures/heap/binary'

describe BinaryHeap do
  it 'should be max heap' do
    heap = MaxBinaryHeap.create_from_array([5,1,6,3,8,5,7,8,34,12])
    heap.pop.must_equal 34
    heap.pop.must_equal 12
    heap.pop.must_equal 8
    heap.pop.must_equal 8
    heap.pop.must_equal 7
    heap.pop.must_equal 6
    heap.pop.must_equal 5
    heap.pop.must_equal 5
    heap.pop.must_equal 3
    heap.pop.must_equal 1
  end

  it 'should be min heap' do
    heap = MinBinaryHeap.create_from_array([5,1,6,3,8,5,7,8,34,12])
    heap.pop.must_equal 1
    heap.pop.must_equal 3
    heap.pop.must_equal 5
    heap.pop.must_equal 5
    heap.pop.must_equal 6
    heap.pop.must_equal 7
    heap.pop.must_equal 8
    heap.pop.must_equal 8
    heap.pop.must_equal 12
    heap.pop.must_equal 34
  end
end
