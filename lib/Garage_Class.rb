require_relative 'bike_container'

class Garage
  include BikeContainer
  
  def accept(bike)
    bike.broken ? fix_bikes(bike) : add_bike(bike)
    add_bike bike
  end

  def fix_bikes(bike)
    bike.fix
  end
end
