require_relative "dictionary"
require_relative "computer"
require_relative "player"
require_relative "black_board"


  computer = Computer.new
  dictionary = Dictionary.new
  player = Player.new

  computer.generate_secret_word(dictionary.words)

  black_board = BlackBoard.new(computer.secret_word)


  black_board.display_(black_board.black_board)

  player_guess = player.get_input

  black_board.check_player_guess(computer.secret_word, player_guess, black_board.black_board)

  black_board.display_(black_board.black_board)

  player_guess = player.get_input

  black_board.check_player_guess(computer.secret_word, player_guess, black_board.black_board)

  black_board.display_(black_board.black_board)

  player_guess = player.get_input

  black_board.check_player_guess(computer.secret_word, player_guess, black_board.black_board)

  black_board.display_(black_board.black_board)

  player_guess = player.get_input

  black_board.check_player_guess(computer.secret_word, player_guess, black_board.black_board)

  black_board.display_(black_board.black_board)

  puts "Answer:"
  puts computer.secret_word



  #computer.secret_word holds the random word