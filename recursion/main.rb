require_relative("lib/fibonacci")
require_relative("lib/merge_sort")

puts "Fibonacci sequence with number supplied:"
p fibonacci(8)
puts "Fibonacci sequence with number supplied, using recursion:"
p fibonacci_recursive(8)

puts "Merge sort:"
p merge_sort.sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort.sort([105, 79, 100, 110])
