# https://en.wikipedia.org/wiki/Comb_sort

def comb_sort(array)
  return array if array.length <= 1

  factor = 1.247
  gap_factor = array.length / factor

  while gap_factor > 1
    i, j = 0, gap_factor.round

    while j < array.length
      array[j], array[i] = array[i], array[j] if array[i] >= array[j]
      i += 1
      j += 1
    end

    gap_factor = gap_factor / factor
  end

  array
end
