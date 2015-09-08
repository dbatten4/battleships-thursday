
class Ship

  attr_reader :position

  def initialize(direction, position, size = 1, hits = 0)
    @direction = direction
    @position = position
    @size = size
    @hits = hits
  end
end
