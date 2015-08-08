class Bike
  DEFAULT_WORKING = true

  attr_accessor :bike
  attr_accessor :working

  def initialize
	  @bike
	  @working = DEFAULT_WORKING
  end

  def report_broken
	  @working = false
  end

  def broken?
	  @working == false ? true : false
  end

  def fix
	  @working = true
  end
end
