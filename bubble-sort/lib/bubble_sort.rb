def bubble_sort(array)
  length = array.length - 1
  count = 0
  while count < length
    this_item = count
    next_item = count + 1
    item1 = array[this_item]
    item2 = array[next_item]
    if item1 < item2
      count += 1
    elsif item2 < item1
      array[this_item] = item2
      array[next_item] = item1
      count = 0
    else
      p "finished!"
      count = length
    end
  end
  array
end

# temp tests
# p bubble_sort([4, 3, 78, 2, 0, 2])
# array = (1..30).to_a.shuffle
# p bubble_sort(array)
