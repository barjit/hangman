class GameState
  def initialize(secret_word, history, turns)
    @secret_word = secret_word
    @guess_history = history
    @turns = turns
  end

  def secret_word
    @secret_word
  end

  def guess_history
    @guess_history
  end

  def turns
    @turns
  end

  def save
    Dir.mkdir("saved_games") unless Dir.exists? "saved_games"

    filename = "saved_games/saved.yaml"

    File.open(filename, 'w') do |file|
      file.puts self.to_yaml
    end

    exit
  end

end