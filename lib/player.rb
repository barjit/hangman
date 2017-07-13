
class Player
  attr_accessor :player_guess
  attr_accessor :history

  def initialize
    @history = Array.new
  end

  def get_input(game_state)
    @player_guess = ""
    until valid?(@player_guess)
      puts "You can 'save', or 'quit' - otherwise type a letter to keep playing!"
      @player_guess = gets.downcase.chomp

      case @player_guess
        when "quit"
          exit
        when "save"
          game_state.save
        else
          @player_guess
      end

    end
    unless @history.include? @player_guess
      store_history
    end

    @player_guess    
  end

  def store_history
    @history << @player_guess
  end

  def valid?(guess)
    alphabet = %w{ a b c d e f g h i j k l m n o p q r s t u v w x y z }
    if alphabet.include? guess and guess.length == 1
      true
    else
      false
    end
  end

end



