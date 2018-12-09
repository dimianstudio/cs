# https://en.wikipedia.org/wiki/Selection_sort

def selection_sort(array)
  return array if array.length <= 1
  right_index = array.length - 1

  for i in 0..right_index
    least = i

    for j in (i + 1)..right_index
      least = j if array[j] < array[least]
    end

    array[i], array[least] = array[least], array[i]
  end

  array
end
