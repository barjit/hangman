require_relative "dictionary"
require_relative "computer"


  computer = Computer.new
  dictionary = Dictionary.new

  computer.generate_secret_word(dictionary.words)

  #computer.secret_word holds the random word