require './lib/bike.rb'
class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if @bikes.empty?
    Bike.new
  end
  def dock(bike)
    raise 'Docking station full' if @bikes.length >= 20
    @bikes.push(bike)
  end
end
