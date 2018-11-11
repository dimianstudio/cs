require 'test_helper'
require_relative '../../sort/gnome'

describe 'gnome_sort(array)' do
  it { with_array(100) { |subject| gnome_sort(subject.unsorted).must_equal subject.sorted }}
end
