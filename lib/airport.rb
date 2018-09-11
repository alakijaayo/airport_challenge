require './lib/plane'

class AirportTerminal

  attr_reader :planes

  def initialize
    @planes = []
  end

  def land(plane)
    @planes << plane
  end

   def take_off(plane)
    @planes.delete(plane)
    p "Plane has left the terminal!"
  end
end
