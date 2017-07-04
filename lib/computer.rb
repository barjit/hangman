require_relative 'dictionary'

class Computer

  attr_accessor :secret_word

  def generate_secret_word(words)
    @secret_word = words.select {|word| word if word.length > 5 && word.length < 12}.sample
  end

end
