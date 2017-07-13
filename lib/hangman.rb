require 'yaml'
require_relative "dictionary"
require_relative "computer"
require_relative "player"
require_relative "black_board"
require_relative "game_state"

@computer = Computer.new
@dictionary = Dictionary.new("5desk.txt")
@player = Player.new


class Game
  
  def self.start(computer, dictionary, player)

    puts "Would you like to re-load the saved game? y/n "
    response = gets.chomp
    if response == "y"
      self.load
    else
      @secret_word = computer.generate_secret_word(dictionary.words)
      @guess_history = player.history
      @black_board = BlackBoard.new(@secret_word)
      @turn = 10
    end

    until @turn == 0

      @game_state = GameState.new(@secret_word, @guess_history, @black_board, @turn)

      @black_board.show(@black_board.black_board, @guess_history)

      puts "Guesses Left: #{@turn}"

      player_guess = player.get_input(@game_state)

      @black_board.check_player_guess(@secret_word, player_guess, @black_board.black_board)

      if @black_board.winning_conditions?(@black_board.black_board, @secret_word)
        puts
        puts "Congratulations, you're right - the correct answer is: #{@secret_word}"
        puts "But you knew that all along I'm sure ;)"
        puts
        break
      end

      unless @black_board.correct_guess
        @turn -= 1
      end
    end
  
    if @turn == 0
      puts
      puts "Game Over"
      puts "The correct answer is:"
      puts @secret_word
      puts
    end
  end

  def self.load
    filename = "./saved_games/saved.yaml"
    game_state = YAML::load(File.open(filename))
    
    @secret_word = game_state.secret_word
    @guess_history = game_state.guess_history
    @black_board = game_state.black_board
    @turn = game_state.turns
  end

end

Game.start(@computer, @dictionary, @player)