require './lib/bike.rb'
class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20
  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
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
    @bikes.length >= DEFAULT_CAPACITY
  end
  def empty?
    @bikes.empty?
  end
end
