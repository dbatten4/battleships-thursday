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
    # p struck(coordinates)
    fail "You can\'t hit the same position twice" if already_fired?(coordinates)
    return "You've hit a ship!" if struck(coordinates)
    return "You've missed a ship!" if missed(coordinates)
  end

  def game_over?
    board.length == hits.length
  end


  private

  def got_hit?(coordinates)
    boolean = false
    board.each do |ship|
      if ship.coordinates == coordinates
        ship.hits +=1
        boolean = true
      else
        false
      end
    end
    boolean
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

  def already_fired?(coordinates)
    hits.include?(coordinates) || misses.include?(coordinates)
  end

end
