require 'test_helper'
require_relative '../../../algorithms/sort/selection'

describe 'selection_sort(array)' do
  it { with_array(100) { |subject| selection_sort(subject.unsorted).must_equal subject.sorted }}
end
