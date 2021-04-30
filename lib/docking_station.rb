require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end 

  def release_bike
    fail "No bikes in the station" if @bikes.empty?
    @bikes.pop
  end 

  def dock(bike)
    fail "The station is full" if @bikes.count >= 20
    @bikes.push(bike)
  end

end 