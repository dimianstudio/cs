require 'test_helper'
require_relative '../../../algorithms/sort/insertion'

describe 'insertion_sort(array)' do
  it { with_array(100) { |subject| insertion_sort(subject.unsorted).must_equal subject.sorted }}
end
