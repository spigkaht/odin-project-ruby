def merge_sort
  def sort(array)
    num_elems = array.length
    if num_elems <= 1
      return array
    end

    half_elems = (num_elems / 2).round

    left = array.take(half_elems)
    right = array.drop(half_elems)

    sorted_left = sort(left)
    sorted_right = sort(right)

    merge(sorted_left, sorted_right)
  end

  def merge(left_array, right_array)
    if right_array.empty?
      return left_array
    end

    if left_array.empty?
      return right_array
    end

    smallest = if left_array.first <= right_array.first
      left_array.shift
    else
      right_array.shift
    end

    recursive = merge(left_array, right_array)

    [smallest].concat(recursive)
  end
end
