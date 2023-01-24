

class Math_game
  attr_accessor :current_player, :not_current_player, :player_one, :player_two

  def initialize

    # Declares our two players
    @player_one = Player.new("Mario")
    @player_two = Player.new("Bowser")

    # Player one goes first by default
    @current_player = @player_one
    @not_current_player = @player_two

  end


  # Write main game loop here
  def new_game
    puts "----- NEW GAME -----"
    puts "#{@current_player.player_name} goes first!"

    turn = Turn.new(@not_current_player)
    turn.take_turn(@current_player, @not_current_player)


    if turn.round_result?
      puts "round_result is returning true"
    end
  end



  # Switch to new player logic NOT TESTED YET
  def switch_turn
    if @current_player == @player_one
      @current_player = @player_two
      @not_current_player = @player_one
    else @current_player = @player_one
      @not_current_player = @player_two
    end
  end

end

