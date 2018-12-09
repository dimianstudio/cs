# https://en.wikipedia.org/wiki/Heapsort

require_relative '../../data_structures/heap/binary'

def heap_sort(array)
  return array if array.length <= 1
  heap = MinBinaryHeap.create_from_array(array)
  heap.size.times.map { heap.pop }
end
