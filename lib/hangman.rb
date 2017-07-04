require_relative "dictionary"
require_relative "computer"
require_relative "player"


  computer = Computer.new
  dictionary = Dictionary.new
  player = Player.new

  def black_board(secret_word)
    @black_board = Array.new(secret_word.length) {"_"}
  end

  def display_(black_board)
    black_board.each do |letter|
      print letter + " "
    end
    puts
  end

  def check_player_guess(secret_word, player_guess, black_board)
    words = secret_word.split("")
    words.each_with_index do |letter, index|
      if letter == player_guess
        black_board[index] = player_guess
      end
    end
  end



  computer.generate_secret_word(dictionary.words)

  display_(black_board(computer.secret_word))

  player_guess = player.get_input

  check_player_guess(computer.secret_word, player_guess, black_board(computer.secret_word))

  display_(black_board(computer.secret_word))

  player_guess = player.get_input

  check_player_guess(computer.secret_word, player_guess, black_board(computer.secret_word))

  display_(black_board(computer.secret_word))

  player_guess = player.get_input

  check_player_guess(computer.secret_word, player_guess, black_board(computer.secret_word))

  display_(black_board(computer.secret_word))

  player_guess = player.get_input

  check_player_guess(computer.secret_word, player_guess, black_board(computer.secret_word))

  display_(black_board(computer.secret_word))

  puts "Answer:"
  puts computer.secret_word



  #computer.secret_word holds the random word