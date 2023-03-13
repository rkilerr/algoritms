require_relative "./quick_sort.rb"

def bucket_sort(array, bucket_size = 5)
  if array.empty? || array.length == 1
    return array
  end

  min_value = array[0]
  max_value = array[0]
  array.each do |item|
    if item < min_value
      min_value = item
    elsif item > max_value
      max_value = item
    end
  end

  bucket_count = ((max_value - min_value) / bucket_size).floor + 1
  bucket_array = Array.new(bucket_count)

  (0..bucket_array.length - 1).each do |index|
    bucket_array[index] = []
  end

  array.each do |item|
    bucket_array[((item - min_value) / bucket_size).floor] << item
  end

  sorted_array = []

  bucket_array.each do |item|
    new_arr = QuickSort.quick_sort(item, 0, item.length - 1)
    sorted_array.concat(new_arr)
  end

  return sorted_array
end
