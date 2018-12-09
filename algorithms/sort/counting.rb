# https://en.wikipedia.org/wiki/Counting_sort

def counting_sort(array)
  return array if array.length <= 1
  counts = Array.new(array.length) { 0 }

  array.each do |number|
    counts[number] += 1
  end

  result = []

  counts.each_with_index do |count, i|
    count.times { result << i } if count > 0
  end

  result
end
