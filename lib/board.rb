require_relative 'ship'

class Board

  attr_reader :ships

  def initialize
    @ships = { A1: 0, B1: 0, A2: 0, B2: 0 }
  end

  def appropriate_position?(coordinates)
    self.ships.has_key?(coordinates)
  end

end
