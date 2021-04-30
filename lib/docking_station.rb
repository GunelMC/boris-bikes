require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end 

  def release_bike
    fail "No bikes in the station" if empty?
    @bikes.pop
  end 

  def dock(bike)
    fail "The station is full" if full?
    @bikes.push(bike)
  end

  def empty? 
    @bikes.empty?
  end 

  def full?
    @bikes.count >=  DEFAULT_CAPACITY
  end 
end 