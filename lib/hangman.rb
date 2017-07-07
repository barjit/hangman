require_relative "dictionary"
require_relative "computer"
require_relative "player"
require_relative "black_board"


  computer = Computer.new
  dictionary = Dictionary.new("5desk.txt")
  player = Player.new

  # dictionary.word_from_dictionary(dictionary.words, 12)
  # puts "-------------------------------------------------"
  # puts "word: "
  # puts dictionary.word
  # puts "chosen word length: "
  # puts dictionary.word.length
  # puts "-------------------------------------------------"


  computer.generate_secret_word(dictionary.words)

  black_board = BlackBoard.new(computer.secret_word)

  puts "Computer secret_word.length = #{computer.secret_word.length}"

@turn = 10

until @turn == 0

  black_board.show(black_board.black_board)

  puts "guesses left: #{@turn}"

  player_guess = player.get_input

  black_board.check_player_guess(computer.secret_word, player_guess, black_board.black_board)

  @turn -= 1
end

  puts "Answer:"
  puts computer.secret_word



  #computer.secret_word holds the random word