module QuickSort
  def self.quick_sort(array, first, last)
    if (first < last)
      index = partiation(array, first, last)
      quick_sort(array, first, index - 1)
      quick_sort(array, index + 1, last)
    end
    return array
  end

  def self.partiation(array, first, last)
    pivot = array[last]
    p_index = first
    i = first

    while i < last
      if (array[i].to_i <= pivot.to_i)
        array[i], array[p_index] = array[p_index], array[i]
        p_index += 1
      end
    i +=1
    end
    array[p_index], array[last] = array[last], array[p_index]
    return p_index
  end
end
