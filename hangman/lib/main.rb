require_relative "game"

def new_game()
  puts "Load a previous game? (y/n)"
  print "> "
  choice = gets.chomp

  if choice == "y"
    loaded = true
    current_game = load_game
  else
    loaded = false
    lines = File.readlines("google-10000-english-no-swears.txt")
    current_game = Game.new
    until current_game.word.length <=13 && current_game.word.length >= 6 do
      current_game.word = lines.sample
    end
  end
  run_game(current_game, loaded)
end

def run_game(current_game, loaded)
  if !loaded
    current_game.letters = current_game.word.tr("\n", "").split("")
    original_word = current_game.letters.map(&:itself)
    guess = current_game.letters.map { |letter| letter = "_" }
  end

  while current_game.winner == false && current_game.counter.positive? do
    puts guess.join(" ")

    puts "Enter 0 to save your game and exit OR"
    puts "Enter a letter (a-z) or type out your whole word guess"
    print "> "
    input = gets.chomp.downcase

    if input == "0"
      save_game(current_game)
      puts "goodbye!"
      return
    elsif input.length > 1 && input == original_word.join
      current_game.winner = true
      break
    elsif input.length > 1 || input.count("0-9") > 0
      puts "Incorrect entry, try again"
    elsif current_game.letters.include?(input)
      puts "Correct!"
    else
      puts "Incorrect!"
      current_game.incorrect_guesses << input
      current_game.count_down
    end

    puts "Your incorrect guesses: #{current_game.incorrect_guesses}"
    puts "You have #{current_game.counter} guesses left"

    while current_game.letters.include? input do
      index = current_game.letters.index(input)
      guess[index] = current_game.letters[index]
      current_game.letters[index] = ""
    end

    current_game.winner = true if current_game.letters.all? { |letter| letter == "" } || original_word == guess
  end

  puts current_game.winner ? "Correct, you are the winner!" : "You lose!"
  puts "The word was #{original_word.join}"

  puts "Play again? (y/n)"
  print "> "
  repeat_game = gets.chomp
  new_game if repeat_game == "y"
end

def save_game(game)
  File.write("save.txt", game)
end

def load_game
  File.read("save.txt")
end

new_game
