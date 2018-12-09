require 'test_helper'
require_relative '../../../algorithms/sort/intro'

describe 'intro_sort(array)' do
  it { with_array(100) { |subject| intro_sort(subject.unsorted).must_equal subject.sorted }}
end
