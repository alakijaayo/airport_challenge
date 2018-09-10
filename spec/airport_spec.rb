require './lib/airport'
require './lib/plane'

describe AirportTerminal do

  it { is_expected.to respond_to :land }

  it 'allows a plane to land' do
    plane = Plane.new
    expect(subject.land(plane)).to eq [plane]
  end

  it 'informs us a plane has taken off' do
    plane = Plane.new
    expect(subject.take_off(plane)).to eq "Plane has left the terminal!"
  end

end
