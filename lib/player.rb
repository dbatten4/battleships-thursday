require_relative 'ship'
require_relative 'board'

class Player

  attr_reader :board, :hits, :misses

  def initialize
    @board = Board.new
    @hits = []
    @misses = []
  end

  def place(ship)
    self.board.ships << ship
  end

  def receive_hit(position)
    hitted(position)
    missed(position)
  end

  def game_over?
    self.board.ships.count == self.hits.length
  end

  private

  def got_hit?(position)
    board.ships.find {|ship| ship.position == position}
  end

  def hitted(position)
    self.hits << position if got_hit?(position)
    return "You've hit a ship!" if got_hit?(position)
  end

  def missed(position)
    self.misses << position if !(got_hit?(position))
    return "You've missed" if !(got_hit?(position))
  end

end
