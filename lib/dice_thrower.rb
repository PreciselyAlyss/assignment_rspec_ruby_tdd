class Game
attr_reader :name

  def initialize(name = "Something")
    @name = name
  end

  def start
    p "Game Start"
  end

  def roll
    # assumes 1d6
    value = rand(1..6)
  end

  def game
    # stuff here
  end

  def score
    # stuff here
  end
end
