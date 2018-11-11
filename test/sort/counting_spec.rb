require 'test_helper'
require_relative '../../sort/counting'

describe 'counting_sort(array)' do
  it { with_array(100) { |subject| counting_sort(subject.unsorted).must_equal subject.sorted }}
end
