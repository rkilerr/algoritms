input = []
array_size = 12
range = 15
(0...array_size).each {input.push(rand(0..range))}

def count_sort(arr, range)
  count_arr = Array.new(range+1, 0)

  arr.each do |item|
    count_arr[item] += 1
  end

  (1...count_arr.size).each do |index|
    count_arr[index] = count_arr[index] + count_arr[index-1]
  end

  result = Array.new(arr.size)
  for i in 0...arr.size do
    count_arr[arr[i]] -= 1
    result[count_arr[arr[i]]] = arr[i]
  end

  result
end
