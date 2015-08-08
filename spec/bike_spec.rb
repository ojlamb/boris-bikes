require 'Bike_Class'

describe Bike do

	it {is_expected.to respond_to(:broken?)}

	it "can be reported broken" do
		subject.report_broken
		expect(subject).to be_broken
	end

	it "can be fixed" do
		subject.fix
		expect(subject.working).to be true
	end

end
