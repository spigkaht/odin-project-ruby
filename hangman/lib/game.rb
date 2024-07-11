class Game
  attr_accessor :letters, :incorrect_guesses, :word, :counter, :winner, :guess, :original_word

  def initialize
    @letters = []
    @incorrect_guesses = []
    @word = ""
    @counter = 8
    @winner = false
    @guess = []
    @original_word = []
  end

  def count_down
    @counter -= 1
  end
end
