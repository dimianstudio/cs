def min_max(array)
  return [nil, nil] if array.length == 0

  array.each_with_object([nil, nil]) do |el, result|
    result[0] ||= el
    result[1] ||= el

    result[0] = el if el < result[0]
    result[1] = el if el > result[1]
  end
end
