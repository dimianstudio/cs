# https://en.wikipedia.org/wiki/Quicksort

def quick_sort(array, partition = 'hoare')
  return array if array.length <= 1
  __quick_sort_routine(array, partition, 0, array.length - 1)
end

def __quick_sort_routine(array, partition, first, last)
  if first < last
    pivot = send("__#{partition}_partition", array, first, last)
    __quick_sort_routine(array, partition, first, pivot - 1)
    __quick_sort_routine(array, partition, pivot + 1, last)
  end

  array
end

def __median_of_three_partition(array, first, last)
  mid = (first + last) / 2

  array[last], array[first] = array[first], array[last] if array[last] < array[first]
  array[first], array[mid] = array[mid], array[first]   if array[mid] < array[first]
  array[last], array[mid] = array[mid], array[last]     if array[last] < array[mid]

  __lomuto_partition(array, first, last)
end

def __hoare_partition(array, first, last)
  pivot = array[first]
  i, j = first, last

  loop do
    i += 1 while array[i] < pivot
    j -= 1 while array[j] > pivot
    return j if i >= j
    array[i], array[j] = array[j], array[i]
  end
end

def __lomuto_partition(array, first, last)
  pivot = array[last]
  i = first

  for j in first..(last - 1)
    if array[j] <= pivot
      array[i], array[j] = array[j], array[i]
      i += 1
    end
  end

  array[i], array[last] = array[last], array[i]
  i
end
