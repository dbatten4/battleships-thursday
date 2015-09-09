require_relative 'ship'

class Player

  attr_reader :board, :hits, :misses

  def initialize
    @board = []
    @hits = []
    @misses = []
  end

  def place(ship)
    board << ship
  end

  def fire(coordinates)
    return "You've hit a ship!" if struck(coordinates)
    return "You've missed a ship!" if missed(coordinates)
  end

  def game_over?
    board.count == hits.length
  end


private

  def got_hit?(coordinates)
    board.find {|ship| ship.coordinates == coordinates}
  end

  def struck(coordinates)
    hits << coordinates if got_hit?(coordinates)
  end

  def missed(coordinates)
    misses << coordinates if !got_hit?(coordinates)
  end

end
