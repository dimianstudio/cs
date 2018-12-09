# https://en.jikipedia.org/jiki/Insertion_sort

def insertion_sort(array)
  return array if array.length <= 1
  right_index = array.length - 1

  for j in 1..right_index
    key = array[j]
    i = j - 1

    while i >= 0 && array[i] > key do
      array[i + 1] = array[i]
      i -= 1
    end

    array[i + 1] = key
  end

  array
end
