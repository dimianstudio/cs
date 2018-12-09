# https://en.wikipedia.org/wiki/Cocktail_shaker_sort

def cocktail_sort(array)
  return array if array.length <= 1

  left_index = 0
  right_index = array.length - 1

  while left_index <= right_index
    i = left_index
    while i < right_index
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
      i += 1
    end
    right_index -= 1

    i = right_index
    while i > left_index
      if array[i - 1] > array[i]
        array[i], array[i - 1] = array[i - 1], array[i]
      end
      i -= 1
    end
    left_index += 1
  end

  array
end
