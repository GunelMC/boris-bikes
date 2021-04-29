require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    fail "No bikes in the station" unless @bike
    @bike
  end 

  def dock(bike)
    fail "The station is full" if @bike
    @bike = bike
  end

end 