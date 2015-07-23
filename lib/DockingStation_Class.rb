require_relative 'Bike_Class'

class DockingStation
	attr_reader :capacity
	DEFAULT_CAPACITY = 20

	def initialize
		@bikes =[]
		@capacity = DEFAULT_CAPACITY
	end

	def dock (bike)
		fail 'Docking Station full' if full?
		bikes << bike
	end

	def release_bike
		fail "No bikes available" if empty?
		bikes.pop
	end

	private

	attr_reader :bikes

	def full?
		bikes.count >= @capacity
	end

	def empty?
		bikes.empty?
	end


end
