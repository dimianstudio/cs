require 'test_helper'
require_relative '../../../algorithms/sort/shell'

describe 'shell_sort(array)' do
  it { with_array(100) { |subject| shell_sort(subject.unsorted).must_equal subject.sorted }}
end
