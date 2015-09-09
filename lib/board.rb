require_relative 'ship'

class Board

  attr_reader :ships

  def initialize
    @ships = []
  end

  def appropriate_position?(coordinates)
    self.ships.has_key?(coordinates)
  end

end
