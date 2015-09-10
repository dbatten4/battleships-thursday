require_relative 'ship'

class Player
  COORDINATES = [:A1, :B1, :A2, :B2]

  attr_reader :board, :hits, :misses

  def initialize
    @board = []
    @hits = []
    @misses = []
  end

  def place(ship, coordinates)
    ship.coordinates = coordinates
    fail "Wrong coordinates" if wrong_coordinates?(ship)
    board << ship
  end

  def fire(coordinates)
    return "You've hit a ship!" if struck(coordinates)
    return "You've missed a ship!" if missed(coordinates)
  end

  def game_over?
    board.length == hits.length
  end


  private

  def got_hit?(coordinates)
    board.each do |ship|
      if ship.coordinates == coordinates
        ship.hits +=1
      else
        return false
      end
    end
    # board.find {|ship| ship.coordinates == coordinates}
  end

  def struck(coordinates)
    hits << coordinates if got_hit?(coordinates)
  end

  def missed(coordinates)
    misses << coordinates if !got_hit?(coordinates)
  end

  def wrong_coordinates?(ship)
    !COORDINATES.include?(ship.coordinates)
  end

end
