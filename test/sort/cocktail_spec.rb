require 'test_helper'
require_relative '../../sort/cocktail'

describe 'cocktail_sort(array)' do
  it { with_array(100) { |subject| cocktail_sort(subject.unsorted).must_equal subject.sorted }}
end
