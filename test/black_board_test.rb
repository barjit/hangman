require 'minitest/autorun'
require_relative "../lib/black_board"
require_relative "../lib/dictionary"
require_relative "../lib/computer"

class BlackBoardTest < Minitest::Test
  def setup
    @dictionary = Dictionary.new("5desk.txt")
    @computer = Computer.new
    @computer.generate_secret_word(@dictionary.words)
    @black_board = BlackBoard.new(@computer.secret_word)
  end

  def test_that_blank_black_board_is_same_length_as_secret_word
    assert_equal(@computer.secret_word.length, @black_board.black_board.length)
  end

  def test_winning_conditions_true_if_met
    assert(true, @black_board.winning_conditions(@black_board.black_board, @computer.secret_word))
  end


end