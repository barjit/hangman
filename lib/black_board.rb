require_relative 'computer'

class BlackBoard

  attr_accessor :black_board
  attr_accessor :correct_guess

  def initialize(secret_word)
    @black_board = Array.new(secret_word.length) {"_"}
  end

  def show(black_board)
    black_board.each do |letter|
      print letter + " "
    end
    print "\n"
  end

  def check_player_guess(secret_word, player_guess, black_board)                    
    words = secret_word.split("")
    @correct_guess = false
    words.each_with_index do |letter, index|
      if letter == player_guess
        black_board[index] = player_guess
        @correct_guess = true
      end
    end
  end

  def winning_conditions?(black_board, secret_word)
    black_board == secret_word.split("") ? true : false
  end

end