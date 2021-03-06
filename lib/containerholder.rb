
require './lib/bike_container'

class ContainHolder; 
	include BikeContainer; 
end

	describe BikeContainer do
	
	let(:bike) { Bike.new }
	let(:holder) { ContainerHolder.new }

	it "should accept a bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end	

	it "it should not delete bike" do
		2.times holder.release(bike)
		expect(bikes.delete(bike)).to eq(false)
	end




	require './lib/docking_station'

	describe DockingStation do

		let(:station) { DockingStation.new(:capacity => 123) }

		it "should allow setting default capacity on initialising" do
			expect(station.capacity).to eq(123)
		end

end