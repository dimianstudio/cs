require 'test_helper'
require_relative '../../../algorithms/sort/comb'

describe 'comb_sort(array)' do
  it { with_array(100) { |subject| comb_sort(subject.unsorted).must_equal subject.sorted }}
end
