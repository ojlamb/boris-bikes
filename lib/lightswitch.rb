
#This is an example of a program that is not encapsulated. 
#Two light switches have the ability to change the light bulbs status creating unintended results.



class Machine
	attr_accessor :status
	DEFAULT_STATUS = 'off'
	def initialize
		@machine
		@status = DEFAULT_STATUS
	end
end

class Button
	def turn_on(machine)
		if machine.status == 'on'
			machine.status = 'off'
		else
			machine.status = 'on'
		end
	end
	def turn_off(machine)
		if machine.status == 'on'
			machine.status = 'off'
		else
			machine.status = 'on'
		end
	end
end






