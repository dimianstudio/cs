require 'test_helper'
require_relative '../../../algorithms/sort/merge'

describe 'merge_sort(array)' do
  it { with_array(100) { |subject| merge_sort(subject.unsorted).must_equal subject.sorted }}
end
