# https://en.wikipedia.org/wiki/Gnome_sort

def gnome_sort(array)
  n = array.length
  i = 1

  while i < n
    if i == 0 || array[i - 1] <= array[i]
      i += 1
    else
      array[i], array[i - 1] = array[i - 1], array[i]
      i -= 1
    end
  end

  array
end
