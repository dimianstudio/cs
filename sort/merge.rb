# https://en.wikipedia.org/wiki/Merge_sort

def merge_sort(array)
  n = array.length
  return array if n <= 1

  pivot = (n / 2.0).round

  merge(
    merge_sort(array[0...pivot]),
    merge_sort(array[pivot..-1])
  )
end

def merge(left_array, right_array)
  return left_array if right_array.empty?
  return right_array if left_array.empty?

  el = left_array.first <= right_array.first ? left_array.shift : right_array.shift

  merge(left_array, right_array).unshift(el)
end
