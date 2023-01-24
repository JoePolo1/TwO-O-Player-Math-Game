

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

    # Ruby while style loop
    while @player_one.total_lives > 0 && @player_two.total_lives > 0 do
      turn = Turn.new(@current_player, @not_current_player)

      # initiates the first turn
      turn.take_turn


      if turn.round_result?
        puts "#{@player_one.player_name} #{@player_one.total_lives}/3 vs #{@player_two.player_name} #{@player_two.total_lives}/3"
        
      else
        # current player loses a life, due to point loss.
        @current_player.wound
        puts "#{@player_one.player_name} #{@player_one.total_lives}/3 vs #{@player_two.player_name} #{@player_two.total_lives}/3"
      end

      # End game
      if @current_player.total_lives == 0
        puts "#{@not_current_player.player_name} wins with a score of #{@not_current_player.total_lives}/3"
        puts "----- GAME OVER -----"
      end
      # swaps players
      switch_turn
    end

  end



  # Switch to new player logic
  def switch_turn
    if @current_player == @player_one
      @current_player = @player_two
      @not_current_player = @player_one
    else 
      @current_player = @player_one
      @not_current_player = @player_two
    end
  end

end

