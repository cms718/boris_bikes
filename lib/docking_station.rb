require './lib/bike.rb'
class DockingStation
  attr_reader :bike

  def release_bike
    raise 'No bikes available' if !@bike
    Bike.new
  end
  def dock(bike)
    raise 'Docking station full' if @bike
    @bike = bike
  end
end
