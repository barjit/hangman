
class Player
  attr_accessor :current_guess

  def get_input
    @current_guess = ""
    until is_valid?(@current_guess)
      puts "Please type a single letter: "
      @current_guess = gets.downcase.chomp
    end
    @current_guess    
  end

  def is_valid?(input)                                      #fix this up
    if input.class == String && input.length == 1
      true
    else
      false
    end
  end

end
