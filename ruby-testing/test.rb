def miniMaxSum(arr)
  # Write your code here
  # find max
  max = arr.max
  puts "max: #{max}"
  # sum array values except max
  low_sum = arr.reject { |number| number == max }.sum
  # find min
  min = arr.min
  puts "min: #{min}"
  # sum array values except min
  high_sum = arr.reject { |number| number == min }.sum
  # print values
  puts "#{low_sum} #{high_sum}"
end

miniMaxSum([5, 5, 5, 5, 5])
