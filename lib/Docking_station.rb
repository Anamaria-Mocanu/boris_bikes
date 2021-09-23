 
class DockingStation
  attr_reader :bike 
  def initialize(bike = Bike.new)
    @bike = bike
    @docking_station = []
  end

  def release_bike
    #@bike
    # @docking_station.delete(@bike)
    @docking_station.empty? ? (raise "Cannot take bike, dock empty") : (@docking_station.delete(@bike))
  end

  def dock(bike)
    @docking_station.push(bike)
  end

  def status
    #return true
    @docking_station
  end
end