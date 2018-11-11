require 'test_helper'
require_relative '../../sort/tree'

describe 'tree_sort(array)' do
  it { with_array(100) { |subject| tree_sort(subject.unsorted).must_equal subject.sorted }}
end
