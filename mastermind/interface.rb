markers = ["blue", "green", "red"]
match_markers = ["white", "black"]
winner = false
round = 0

# define player / computer
player = "player"
codebreaker = "code breaker"

while !winner
  # computer sets code
  code = []
  4.times do
    code << markers.sample
  end

  # player guesses
  round += 1

  guess = []
  4.times do |i|
    puts "Enter your chice for marker #{i + 1}"
    markers.each_with_index { |marker, index| puts "#{index + 1}: #{marker}" }
    choice = gets.to_i
    guess << choice - 1
  end

  # temporary outputs
  puts "-----"
  puts "guess:"
  puts "#{markers[guess[0]]} : #{markers[guess[1]]} : #{markers[guess[2]]} : #{markers[guess[3]]}"
  puts "code:"
  puts "#{code[0]} : #{code[1]} : #{code[2]} : #{code[3]}"
  puts "-----"

  # guess is compared to code
  response = []
  code.each_with_index do |code_marker, index|
    puts "guess marker: #{markers[guess[index]]}, code: #{code_marker}"
    response << "black" if markers[guess[index]] == code_marker
    response << "white" if code.include?(markers[guess[index]]) && !(markers[guess[index]] == code_marker)
  end

  puts "response pegs (black for correct, white for correct pin in wrong position):"
  puts "#{response[0]} : #{response[1]} : #{response[2]} : #{response[3]}"
  puts "-----"

  puts "press enter for next round"
  gets

  # check win condition
  winner = true if response.all? { |response_marker| response_marker == "black" && response.length == 4 }

  # check for # rounds
  return if round > 12
end

# define win or lose
puts winner ? "You are the winner! You finished in #{round} round" : "You lose!"
