require_relative 'ship'

class Board

  attr_reader :ships
  def initialize
    @ships = []
  end

  def place(ship)
    @ships << ship
  end

  def receive_hit(position)
    self.ships.find {|ship| ship.position == position} ? "Hit!" : "Miss!"
  end


end
