# https://en.wikipedia.org/wiki/Shellsort

def shell_sort(array)
  return array if array.length <= 1

  increment = array.length / 2

  while increment >= 1
    for start_index in 0..increment
      insertion_sort(array, start_index, increment)
    end

    increment /= 2
  end

  array
end

def insertion_sort(array, start = 0, increment = 1)
  return array if array.length <= 1
  right_index = array.length - 1

  i = start

  while i < right_index
    j = [i + increment, right_index].min

    while j - increment >= 0
      if array[j - increment] > array[j]
        array[j - increment], array[j] = array[j], array[j - increment]
      else
        break
      end

      j -= increment
    end

    i += increment
  end

  array
end
