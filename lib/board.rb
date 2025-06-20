class Board
  attr_accessor :board_grid
  def initialize
    self.board_grid = Array.new(3) {Array.new(3, ' ')}
  end

  def display_board
    puts self.board_grid
  end
end