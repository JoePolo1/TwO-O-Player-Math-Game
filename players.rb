class Player
  attr_reader :player_name, :total_lives


  def initialize(username)
    @player_name = username
    @total_lives = 3
  end

  # Method that decrements life on a game point loss
  def wound
    @total_lives -= 1
  end

end