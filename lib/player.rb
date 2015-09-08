require_relative 'ship'
require_relative 'board'

class Player

  attr_reader :board, :hits, :misses

  def initialize(klass = Board.new)
    @board = klass
    @hits = []
    @misses = []
  end

  def place(ship)
    self.board.ships[ship.coordinates] = ship if self.board.appropriate_position?(ship.coordinates)
  end

  def fire(position)
    return "You've hit a ship!" if struck(position)
    return "You've missed a ship!" if missed(position)
  end

  def game_over?
    self.board.ships.count == self.hits.length
  end


private

  def got_hit?(position)
    board.ships.find {|ship| ship.position == position}
  end

  def struck(position)
    self.hits << position if got_hit?(position)
  end

  def missed(position)
    self.misses << position if !got_hit?(position)

  end

end
