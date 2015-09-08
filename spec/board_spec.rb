require 'board'

describe Board do

  it 'knows the appropriate position' do
    expect(subject.appropriate_position?(:A1)).to be_truthy
  end

end
