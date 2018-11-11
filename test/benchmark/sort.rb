require_relative '../support/factory'
require_relative '../support/benchmark'
require_relative '../../sort/bubble'
require_relative '../../sort/cocktail'
require_relative '../../sort/counting'
require_relative '../../sort/gnome'
require_relative '../../sort/insertion'
require_relative '../../sort/merge'
require_relative '../../sort/tree'

Benchmark.measure do |x|
  GC.disable

  @sort_targets = {}

  x.range.each do |n|
    @sort_targets[n] = Factory.array(n).unsorted
  end

  x.report('Bubble sort')             { |n| bubble_sort(@sort_targets[n].dup) }
  x.report('Bubble sort (optimized)') { |n| bubble_sort_optimized(@sort_targets[n].dup) }
  x.report('Cocktail sort')           { |n| cocktail_sort(@sort_targets[n].dup) }
  x.report('Counting sort')           { |n| counting_sort(@sort_targets[n].dup) }
  x.report('Gnome sort')              { |n| gnome_sort(@sort_targets[n].dup) }
  x.report('Insertion sort')          { |n| insertion_sort(@sort_targets[n].dup) }
  x.report('Merge sort')              { |n| merge_sort(@sort_targets[n].dup) }
  x.report('Tree sort')               { |n| tree_sort(@sort_targets[n].dup) }
end
