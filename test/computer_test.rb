require 'minitest/autorun'
require_relative "../lib/computer"

class ComputerTest < Minitest::Test
  def setup
    @computer = Computer.new
    @dictionary = Dictionary.new("5desk.txt")
  end

  def test_that_secret_word_is_generated
    assert @computer.generate_secret_word(@dictionary.words)
  end

  def test_word_length_between_5_and_12_characters
    20.times {assert @computer.generate_secret_word(@dictionary.words).length.between?(5, 12)}
  end

end