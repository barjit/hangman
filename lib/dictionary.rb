class Dictionary

  attr_reader :words
  
  def initialize(text_file)
    @words = File.readlines(text_file).collect(&:strip)
    @words.collect!(&:downcase)
  end
  
end
