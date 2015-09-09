
class Ship

  def self.battleship
    new(:N2, size = 2)
  end

  attr_reader :coordinates

  def initialize(coordinates, size = 1, hits = 0)
    @coordinates = coordinates
    @size = size
    @hits = hits
  end
end
