require_relative 'lib/board'
require_relative 'lib/marker'
require_relative 'lib/player'

running = true
player1 = Player.new("me", "X")
player2 = Player.new("computer", "O")
current_player = player1
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
winning_combos = [
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6]
]

while running
  # system('clear')
  puts " Game Status"
  puts ""
  puts " #{board[6]}|#{board[7]}|#{board[8]}"
  puts " -----"
  puts " #{board[3]}|#{board[4]}|#{board[5]}"
  puts " -----"
  puts " #{board[0]}|#{board[1]}|#{board[2]}"
  puts ""
  puts " ~  Player X turn  ~ "
  puts " ~    0 to quit    ~ "
  puts " Enter grid number ie:"
  puts ""
  puts " 7|8|9"
  puts " -----"
  puts " 4|5|6"
  puts " -----"
  puts " 1|2|3"
  puts ""
  print " >"
  input = gets.chomp.to_i
  running = false if input == 0

  if board[input - 1] != " "
    puts "\n Already taken! Try again \n\n"
  elsif current_player == player1
    board[input - 1] = "x"
    current_player = player2
  else
    board[input - 1] = "o"
    current_player = player1
  end

  wincheck = 0
  winning_combos.each do |combo|
    combo.each do |index|
      wincheck += 1 if board[index] == ("x" || "o")
    end
    running = false if wincheck == 3
    wincheck = 0
  end
end

winner = current_player == player1 ? player2 : player1
puts "The winner is #{winner.name}!"
puts "goodbye!"
