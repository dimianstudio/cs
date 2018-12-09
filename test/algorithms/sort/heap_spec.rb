require 'test_helper'
require_relative '../../../algorithms/sort/heap'

describe 'heap_sort(array)' do
  it { with_array(100) { |subject| heap_sort(subject.unsorted).must_equal subject.sorted }}
end
