require 'board'

describe Board do

  let(:ship) {double :ship, position: "A1"}

  it "a board will accept a ship" do
    expect(subject.place(:ship)).to eq(subject.ships)
  end

  it "can receive a hit and checks if it hits a ship" do
    subject.place(ship)
    expect(subject.receive_hit("A1")).to eq("Hit!")
  end

  it "reports missed hit when no ship at position" do
    subject.place(ship)
    expect(subject.receive_hit("B1")).to eq("Miss!")
  end


  #can report if all ships are sunk
  #can report if not all ships are sunk






end
