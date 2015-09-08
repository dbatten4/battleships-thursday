
class Ship

  attr_reader :coordinates

  def initialize(direction, coordinates, size = 1, hits = 0)
    @direction = direction
    @coordinates = coordinates
    @size = size
    @hits = hits
  end
end
