require 'DockingStation_Class'
require 'support/shared_examples_for_bike_container'

describe DockingStation do
	it_behaves_like BikeContainer
	let(:bike) {double(:bike, {:broken? => false, :working=>true})}
	let(:broken_bike) {double(:bike, {:broken? =>true} )}

	it "releases working bike" do #releases a bike that is working
		subject.dock bike
		bike = subject.release_bike
		expect(bike.working).to eq true
	end

	it { is_expected.to respond_to(:dock).with(1).argument}

	describe "#releases_bike" do
		it "releases bike only when bikes are available" do
			expect{subject.release_bike}.to raise_error "No bikes available"
		end
	end

	it 'does not release broken bikes' do
  	subject.dock broken_bike
  	expect {subject.release_bike}.to raise_error 'No bikes available'
	end

	describe '#dock' do
		it 'raises an error if the docking station is full' do
			subject.capacity.times {subject.dock bike}
			expect{subject.dock bike}.to raise_error 'DockingStation full'
		end
	end

end
