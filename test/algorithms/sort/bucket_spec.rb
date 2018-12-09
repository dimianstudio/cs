require 'test_helper'
require_relative '../../../algorithms/sort/bucket'

describe 'bucket_sort(array)' do
  it { with_array(100) { |subject| bucket_sort(subject.unsorted, 10).must_equal subject.sorted }}
end
