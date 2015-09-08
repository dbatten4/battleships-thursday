require_relative 'ship'
require_relative 'board'

class Player

  attr_reader :board, :hits, :total_hits

  def initialize
    @board = Board.new
    @hits = []
    @misses = []
    @total_hits = 0
  end

  def place(ship)
    @board.ships << ship
  end

  def receive_hit(position)
    if board.ships.find {|ship| ship.position == position}
      @hits << position
      @total_hits += 1
      "You've hit a ship!"
    else
      @misses << position
      "You've missed!"
    end
  end

  def game_over?
    self.board.ships.count == self.total_hits
  end

end
