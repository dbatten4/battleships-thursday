require 'player'

describe Player do

  let(:ship) {double :ship, coordinates: "A1"}

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

  it 'the game can end' do
    subject.place(ship)
    subject.fire("A1")
    expect(subject).to be_game_over
  end

  it "the game is not game over" do
    subject.place(ship)
    subject.fire("B1")
    expect(subject).not_to be_game_over
  end

  it 'can hit a ship' do
    subject.place(ship)
    subject.fire("A1")
    expect(subject.hits).to eq(["A1"])
  end

  it 'record misses' do
    subject.place(ship)
    subject.fire("B1")
    expect(subject.misses).to eq(["B1"])
  end

end
