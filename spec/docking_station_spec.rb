require "docking_station"

	describe DockingStation do 
		let(:bike) { Bike.new }
		let(:station) {DockingStation.new}

		it 'is able to accept a bike' do
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
		end 

		it "should release" do
			station.dock(bike)
			station.release(bike)
			expect(station.bike_count).to eq(0)
		end

		it "should know when it's full" do
			expect(station).to_not be_full
			fill_station(station)
			expect(station).to be_full
		end 

		it "should not accept a bike if it's full" do
			fill_station(station)
			expect{ station.dock(bike) }.to raise_error(RuntimeError)
		end
		

	def fill_station(station)
		(DockingStation::DEFAULT_CAPACITY).times { station.dock(Bike.new) }
	end

end 
