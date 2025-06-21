class Board

  WINNING_LINES = [[1,2,3],[4,5,6],[7,8,9],[1,4,7], [2,5,9], [3,6,9], [1,5,9],[3,5,7]]

  attr_accessor :board_grid
  def initialize
    self.board_grid = [[1,2,3],[4,5,6],[7,8,9]]
  end

  def display
    puts self.board_grid.map { |item| item.join(" | ")}
  end

  def valid_move?(move)
    self.board_grid.any? do |rows|
      rows.any? {|moves| moves == move}
    end
  end

  def update(move, piece)
    case move
    when 1
      self.board_grid[0][0] = piece
    when 2
      self.board_grid[0][1] = piece
    when 3
      self.board_grid[0][2] = piece
    when 4
      self.board_grid[1][0] = piece
    when 5
      self.board_grid[1][1] = piece
    when 6
      self.board_grid[1][2] = piece
    when 7
      self.board_grid[2][0] = piece
    when 8 
      self.board_grid[2][1] = piece
    when 9
      self.board_grid[2][2] = piece
    end
  end

  def winning_move?(moves_list)
    WINNING_LINES.any?{|moves| moves_list.intersection(moves) == moves}
  end

end