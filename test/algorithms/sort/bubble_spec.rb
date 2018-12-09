require 'test_helper'
require_relative '../../../algorithms/sort/bubble'

describe 'bubble_sort(array)' do
  it { with_array(100) { |subject| bubble_sort(subject.unsorted).must_equal subject.sorted }}
end

describe 'bubble_sort_optimized(array)' do
  it { with_array(100) { |subject| bubble_sort_optimized(subject.unsorted).must_equal subject.sorted }}
end
