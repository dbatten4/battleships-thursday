require 'player'

describe Player do

  let(:ship) {double :ship, coordinates: "A1", got_hit?: true}

  it "we can place on board" do
    expect(subject.place ship).to eq(subject.board)
  end

  it "we can fire at the right coordinates" do
    subject.place(ship)
    expect(subject.fire "A1").to eq "You've hit a ship!"
  end

  it "we missed a ship when we fire" do
    subject.place(ship)
    expect(subject.fire "C1").to eq "You've missed a ship!"
  end











































  # it "can place a ship on the board" do
  #   expect(subject.place(:ship)).to eq(subject.board)
  # end

   # it "can tell us when a ship is hit" do
   #   subject.place(ship)
   #   expect(subject.fire("A1")).to eq("You've hit a ship!")
   # end

  # it "can tell us when a ship is missed" do
  #   subject.place(ship)
  #   expect(subject.fire("B4")).to eq("You've missed a ship!")
  # end

  # it "can report hit positions" do
  #   subject.place(ship)
  #   subject.fire("A1")
  #   expect(subject.hits).to eq(["A1"])
  # end

  # it "can report missed positions" do
  #   subject.place(ship)
  #   subject.fire("B2")
  #   expect(subject.hits).to eq([])
  # end

  # it "the game ends when all ships have been hit" do
  #   subject.place(ship)
  #   subject.fire("A1")
  #   expect(subject).to be_game_over
  # end

  # can lose


end
