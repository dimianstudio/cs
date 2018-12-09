require_relative '../support/factory'
require_relative '../support/benchmark'
require_relative '../../algorithms/sort/bubble'
require_relative '../../algorithms/sort/cocktail'
require_relative '../../algorithms/sort/counting'
require_relative '../../algorithms/sort/gnome'
require_relative '../../algorithms/sort/insertion'
require_relative '../../algorithms/sort/merge'
require_relative '../../algorithms/sort/tree'
require_relative '../../algorithms/sort/bucket'
require_relative '../../algorithms/sort/comb'
require_relative '../../algorithms/sort/quick'
require_relative '../../algorithms/sort/shell'
require_relative '../../algorithms/sort/selection'
require_relative '../../algorithms/sort/heap'
require_relative '../../algorithms/sort/intro'

Benchmark.measure do |x|
  GC.disable

  x.samples_factory { |n| Factory.array(n).unsorted }

  x.report('Bubble sort')                   { |samples| bubble_sort(samples) }
  x.report('Bubble sort (optimized)')       { |samples| bubble_sort_optimized(samples) }
  x.report('Cocktail sort')                 { |samples| cocktail_sort(samples) }
  x.report('Counting sort')                 { |samples| counting_sort(samples) }
  x.report('Gnome sort')                    { |samples| gnome_sort(samples) }
  x.report('Insertion sort')                { |samples| insertion_sort(samples) }
  x.report('Merge sort')                    { |samples| merge_sort(samples) }
  x.report('Tree sort')                     { |samples| tree_sort(samples) }
  x.report('Bucket sort')                   { |samples| bucket_sort(samples, 10 ** (Math.log(samples.size, 10).round / 2)) }
  x.report('Comb sort')                     { |samples| comb_sort(samples) }
  x.report('Quick sort (Median of three)')  { |samples| quick_sort(samples, 'median_of_three') }
  x.report('Quick sort (Lomuto)')           { |samples| quick_sort(samples, 'lomuto') }
  x.report('Quick sort (Hoare)')            { |samples| quick_sort(samples, 'hoare') }
  x.report('Shell sort')                    { |samples| shell_sort(samples) }
  x.report('Selection sort')                { |samples| selection_sort(samples) }
  x.report('Heap sort')                     { |samples| heap_sort(samples) }
  x.report('Intro sort')                    { |samples| intro_sort(samples) }
end
