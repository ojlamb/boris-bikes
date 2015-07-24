
class Bike
	attr_accessor :bike
	DEFAULT_WORKING = true
	attr_accessor :working

	def initialize
		@bike 
		@working = DEFAULT_WORKING
	end

	def report_broken
		@working = false
	end

	#def working?
	#	@working
	#end

	def broken?
		if @working == false
			true
		else
			false
		end
	end



end
