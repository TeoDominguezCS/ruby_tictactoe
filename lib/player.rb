class Player
  # setter/getters
  attr_accessor :name, :piece, :moves
  # constructor
  def initialize(name, piece)
    self.name = name
    self.piece = piece
    self.moves = Array.new(5)
  end
end