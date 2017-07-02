class Computer

  def random_word
    dictionary = File.readlines("5desk.txt")
    dictionary.select {|word| word if word.length > 5 && word.length < 12}.sample
  end

end


comp = Computer.new

puts comp.random_word