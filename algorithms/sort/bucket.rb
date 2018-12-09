# https://en.wikipedia.org/wiki/Bucket_sort

require_relative '../general/min_max'
require_relative 'insertion'

def bucket_sort(array, number_of_buckets)
  return array if array.length <= 1

  min, max = min_max(array)
  elements_per_bucket = ((max - min) / (number_of_buckets * 1.0)).ceil

  buckets = number_of_buckets.times.map { [] }

  array.each do |el|
    buckets[el / elements_per_bucket] << el
  end

  buckets.map { |bucket| insertion_sort(bucket) }.flatten
end
