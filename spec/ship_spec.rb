require 'ship'


describe Ship do


it 'will record number of hits' do
  player = Player.new
   ship = Ship.new
  player.place(ship, :A1)
  player.fire(:A1)
  expect(ship.hits).to eq(1)
  end

it 'doesn\'t record a hit if missed' do
  player = Player.new
  ship = Ship.new
  player.place(ship, :A1)
  player.fire(:B1)
  expect(ship.hits).to eq(0)
end

it 'is not sunk initially' do
  player = Player.new
  ship = Ship.new
  player.place(ship, :A1)
  expect(ship.hits).to eq(0)
end

it 'can be sunk' do
  player = Player.new
  ship = Ship.new
  player.place(ship, :A1)
  player.fire(:A1)
  expect(ship.sunk?).to be_truthy
end


end
