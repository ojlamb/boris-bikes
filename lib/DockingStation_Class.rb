require_relative 'Bike_Class'

class DockingStation

	def initialize
		@bike =[]
	end

	def release_bike
		fail "No bikes available" if @bike.empty?
		@bike.pop
	end

	def dock (bike)
		fail 'Docking Station full' if @bike.count >= 20
		@bike << bike
	end

end
