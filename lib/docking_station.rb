require './lib/bike.rb'
class DockingStation
  attr_reader :bike

  def release_bike
    raise 'No bikes available' if !@bike
    Bike.new
  end
  def dock(bike)

    @bike = bike
  end
end
