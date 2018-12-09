# https://en.wikipedia.org/wiki/Introsort

require_relative 'heap'
require_relative 'quick'

def intro_sort(array)
  return array if array.length <= 1
  __intro_sort_routine(array, Math.log(array.length).floor * 2)
end

def __intro_sort_routine(array, max_depth)
  n = array.length
  return array if n <= 1

  pivot = __hoare_partition(array, 0, n - 1)

  if max_depth == 0
    heap_sort(array)
  else
    left = __intro_sort_routine(array[0..pivot], max_depth - 1)
    right = __intro_sort_routine(array[(pivot + 1)..n], max_depth - 1)
    left.concat(right)
  end
end
