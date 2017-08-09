require_relative 'player'

class Game
attr_reader :user, :computer, :score, :dice

  def initialize(player = Player.new("Arya"))
    @user = player
    @computer = Player.new("GLaDOS")
    @score = []
    @dice = 0
  end

  def start
    p "Welcome",
      "Instructions:",
      "Enter how many dice you'd like to throw.",
      "If your dice roll total is higher than the computer, you win!",
      "Type 'quit' to exit the game." 
  end

  def game
    start

    loop do
      # add sum of array values to score
      p "Enter the number of dice you wish to play with:"
      user_input = gets.chomp
      input(user_input)
      player_rolls = @user.roll(@dice)
      comp_rolls = @computer.roll(@dice)
      break if user_input = "quit"
    end
  end

  private

  def input(text)
    if text.is_a? Integer
      @dice = text.to_i
    elsif text == "quit"
      "Exiting..."
    else
      raise "Please check spelling of input."
    end
  end

  def roll(dice)
    # assumes using 1d6
    # https://stackoverflow.com/a/24944306
    Array.new(dice) { rand(1..6) }
  end

end
