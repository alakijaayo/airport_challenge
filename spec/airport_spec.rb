require './lib/airport'

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

  # 1 if i take off a plane, it should no longer be in the airport terminal planes array

  it 'lets us know the plane is no longer at the terminal' do
    plane = Plane.new
    subject.take_off(plane)
    expect(subject.planes).not_to eq [plane]
  end

end
