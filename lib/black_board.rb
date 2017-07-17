require_relative 'computer'

class BlackBoard

  attr_accessor :state
  attr_accessor :correct_guess

  def initialize(secret_word)
    @state = Array.new(secret_word.length) {"_"}
    @correct_guess = false
  end

  def show(black_board_state, history)
    110.times {print "-"}
    puts
    black_board_state.each do |character|
      print character + " "
    end
    print "\t\t Guess History: #{history}"
    puts
    110.times {print "-"}
    puts
  end

  def check_player_guess(secret_word, player_guess, black_board_state)
    words = secret_word.split("")
    @correct_guess = false
    words.each_with_index do |letter, index|
      if letter == player_guess
        black_board_state[index] = player_guess
        @correct_guess = true
      end
    end
  end

  def winning_conditions?(black_board_state, secret_word)
    black_board_state == secret_word.split("") ? true : false
  end

end
