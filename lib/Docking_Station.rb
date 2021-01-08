require_relative 'bike'
class DockingStation
  attr_reader :bikes
  def initialize
    p '2s'
    @bikes = Array.new(5) {Bike.new}
  end

  def release_bike
    fail "No bikes available" unless @bikes.size>0
    @bikes.pop
  end

  def dock(bike)
    @bikes.append(bike)
  end
end
