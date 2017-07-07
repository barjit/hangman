class Dictionary

  attr_reader :words
  attr_reader :word
  
  def initialize(text_file)
    @words = File.readlines(text_file).collect(&:strip)
  end
  
end
