require_relative 'lib/board'
require_relative 'lib/player'

class Game
  def initialize
    puts "Enter player one's name: "
    name_one = gets.chomp
    @player_one = Player.new(name_one, "X")

    puts "Enter player two's name: "
    name_two = gets.chomp
    @player_two = Player.new(name_two, "O")
    puts
    @current_player = @player_one
    @board = Board.new
    
    @input = nil
  end

  def turn 
    # Displays board
    puts "#{@current_player.name}'s Turn!"
    @board.display
    
    # Validates Input
    loop do 
      puts "Enter the number of the space to play:"
      @input = gets.chomp.to_i
      break if @board.valid_move?(@input)
      puts "Invalid Move!"
    end
    # Updates Board, Updates player moves
    @board.update(@input, @current_player.piece)
    @current_player.moves.push(@input)
    #clears input
    @input = nil
  end

  def switch_turn
    if @current_player == @player_one
      @current_player = @player_two
    else
      @current_player = @player_one
    end
  end

  def game_over?
    if @board.winning_move?(@current_player.moves)
      puts "#{@current_player.name} WINS!!!"
      return true
    end
    return false
  end

  def play
    loop do 
      turn
      break if game_over?
      switch_turn
    end
  end

end

game = Game.new
game.play



