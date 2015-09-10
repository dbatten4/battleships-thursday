require 'player'

describe Player do

  # let(:ship) {double :ship, coordinates: :A1}
  # let(:ship2) {double :ship2, coordinates: :C4}

  it "we can place on board" do
    ship = Ship.new
    expect(subject.place(ship, :A1)).to eq(subject.board)
  end

  it "we can fire at the right coordinates" do
    ship = Ship.new
    subject.place(ship, :A1)
    expect(subject.fire :A1).to eq "You've hit a ship!"
  end

  it "we missed a ship when we fire" do
    ship = Ship.new
    subject.place(ship, :A1)
    expect(subject.fire :C1).to eq "You've missed a ship!"
  end

  it 'the game can end' do
    ship = Ship.new
    subject.place(ship, :A1)
    subject.fire(:A1)
    expect(subject).to be_game_over
  end

  it "the game is not game over" do
    ship = Ship.new
    subject.place(ship, :A1)
    subject.fire(:B1)
    expect(subject).not_to be_game_over
  end

  it 'can hit a ship' do
    ship = Ship.new
    subject.place(ship, :A1)
    subject.fire(:A1)
    expect(subject.hits).to eq([:A1])
  end

  it 'record misses' do
    ship = Ship.new
    subject.place(ship, :A1)
    subject.fire(:B1)
    expect(subject.misses).to eq([:B1])
  end

  it 'place ships within board' do
    ship = Ship.new
    expect{subject.place(ship, :C1)}.to raise_error "Wrong coordinates"
  end

  it 'player can chose coordinates' do
    ship = Ship.new
    subject.place(ship, :A1)
    expect(ship.coordinates).to eq(:A1)
  end

  it 'you can\'t hit the same position twice' do
    ship = Ship.new
    subject.place(ship, :A1)
    subject.fire(:A1)
    expect{subject.fire(:A1)}.to raise_error "You can\'t hit the same position twice"
  end


end
