
class Player
  attr_accessor :player_guess
  attr_accessor :history

  def initialize
    @history = Array.new
  end

  def get_input(game_state, history)
    @player_guess = ""

    until valid?(@player_guess)
      puts "You can 'save', or 'quit' - otherwise type a letter to play on!"
      @player_guess = gets.downcase.chomp
      quit_save_or_play(@player_guess, game_state)
    end

    store_history(history, @player_guess)

    @player_guess
  end

  def valid?(guess)
    alphabet = %w{ a b c d e f g h i j k l m n o p q r s t u v w x y z }
    if alphabet.include? guess and guess.length == 1
      true
    else
      false
    end
  end

  def store_history(history, player_guess)
    unless history.include? player_guess
      history << player_guess
    end
  end

  def quit_save_or_play(player_guess, game_state)
    case @player_guess
    when "quit"
      exit
    when "save"
      game_state.save
    else
      @player_guess
    end
  end

end
