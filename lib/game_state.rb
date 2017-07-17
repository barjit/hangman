class GameState

  attr_reader :secret_word, :guess_history, :turns, :black_board

  def initialize(secret_word, history, black_board, turns)
    @secret_word = secret_word
    @guess_history = history
    @black_board = black_board
    @turns = turns
  end

  def save
    Dir.mkdir("saved_games") unless Dir.exists? "saved_games"

    puts "what would you like to call this saved game? "
    filename = "saved_games/#{gets.strip}.yaml"

    File.open(filename, 'w') do |file|
      puts "saving #{filename} now......."
      file.puts self.to_yaml
      puts "#{filename} has been saved!"
    end

  end



end
