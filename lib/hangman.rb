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

  # puts "black_board class:"
  # puts black_board.black_board.class
  # puts "secret_word class"
  # puts computer.secret_word.class 

@turn = 10

until @turn == 0

  black_board.show(black_board.black_board)

  puts "guesses left: #{@turn}"

  player_guess = player.get_input

  black_board.check_player_guess(computer.secret_word, player_guess, black_board.black_board)

  if black_board.winning_conditions?(black_board.black_board, computer.secret_word)
    puts
    puts "Congratulations, you're right - the correct answer is: #{computer.secret_word}"
    puts "But you knew that all along I'm sure ;)"
    puts
    break
  end

  unless black_board.correct_guess
    @turn -= 1
  end
end

  puts "Answer:"
  puts computer.secret_word

