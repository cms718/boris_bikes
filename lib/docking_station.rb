require './lib/bike.rb'
class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end
  def release_bike
    raise 'No bikes available' if empty?
    Bike.new
  end
  def dock(bike)
    raise 'Docking station full' if full?
    @bikes.push(bike)
  end
  
  private
  def full?
    @bikes.length >= 20
  end
  def empty?
    @bikes.empty?
  end
end