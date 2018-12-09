# https://en.wikipedia.org/wiki/Bubble_sort

def bubble_sort(array)
  return array if array.length <= 1

  right_index = array.length - 1

  for j in 0..(right_index - 1)
    for i in 0..(right_index - 1)
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end

  array
end

def bubble_sort_optimized(array)
  return array if array.length <= 1

  right_index = array.length - 1

  begin
    swapped = false

    for i in 0..(right_index - 1)
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    right_index -= 1
  end while swapped

  array
end
