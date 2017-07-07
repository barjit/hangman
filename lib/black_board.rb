require_relative 'computer'

class BlackBoard

  attr_accessor :black_board

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
    words.each_with_index do |letter, index|
      if letter == player_guess
        black_board[index] = player_guess
      end
    end
  end

end