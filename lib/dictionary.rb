class Dictionary

  attr_reader :words
  
  def initialize
    @words = File.readlines("5desk.txt")
  end
  
end
