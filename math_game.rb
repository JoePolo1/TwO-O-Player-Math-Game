

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

    turn = Turn.new
    turn.take_turn(@current_player, @not_current_player)
  end



  # Switch to new player logic NOT TESTED YET
  def switch_turn
    @switch_turn = if @current_player == @player_one
      @current_player = @player_two
    else @current_player = @player_one
    end
  end

end

# puts @current_player
# turn = Turn.new
# Turn.switch_turn
# puts @current_player

# initializes a new game and calls test print
# math = Math_game.new
# math.test_print

# MORE TEST CODE. THIS SHOULD go within the class definition itself ideally. 
# question = Question.new
# puts question.question_string
# puts question.result