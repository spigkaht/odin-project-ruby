class Game
  attr_accessor :letters, :incorrect_guesses, :word, :counter, :winner

  def initialize
    @letters = []
    @incorrect_guesses = []
    @word = ""
    @counter = 8
    @winner = false
  end

  def count_down
    @counter -= 1
  end
end
