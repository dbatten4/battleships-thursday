
class Ship

  # def self.battleship
  #   new(:N2, size = 2)
  # end

  attr_accessor :coordinates, :hits
  attr_reader :size


  def initialize(size = 1, hits = 0)
    @coordinates
    @size = size
    @hits = hits
  end

  def sunk?
    hits == size
  end


end
