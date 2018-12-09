require 'test_helper'
require_relative '../../../algorithms/sort/quick'

describe 'quick_sort(array)' do
  it { with_array(100) { |subject| quick_sort(subject.unsorted, 'median_of_three').must_equal subject.sorted }}
  it { with_array(100) { |subject| quick_sort(subject.unsorted, 'lomuto').must_equal subject.sorted }}
  it { with_array(100) { |subject| quick_sort(subject.unsorted, 'hoare').must_equal subject.sorted }}
end
