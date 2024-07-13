def fibonacci(number)
  array = []
  (number + 1).times do |i|
    i < 2 ? array << i : array << (array[i - 1]) + (array[i - 2])
  end
  array
end

def fibonacci_recursive(number, i = 0, array = [])
  i < 2 ? array << i : array << (array[i - 1]) + (array[i - 2])
  number.positive? ? fibonacci_recursive(number - 1, i + 1, array) : array
end
