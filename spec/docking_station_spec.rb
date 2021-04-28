require "./lib/docking_station.rb"

describe DockingStation do
    describe ".new" do
      context "when given argument to new docking station" do
        it { expect { DockingStation.new(40) }.not_to raise_error(ArgumentError) }
        it { expect(DockingStation.new(40).capacity).to eq(40) }
      end
      context "when no argument given to docking station" do
        it { expect(DockingStation.new.capacity).to eq(20) }
      end
    end
    describe "#release_bike" do
      subject { DockingStation.new }
        it { is_expected.to respond_to(:release_bike) } 
    end

    describe "#release_bike returns an object that responds #working?" do
      context 'when a bike has been docked' do
        let (:station) { DockingStation.new }
        let (:bike) { Bike.new }
        before { station.dock bike }
        it 'returns an object that responds to #working' do
          expect(station.release_bike).to respond_to(:working?)
        end
      end
    end

    describe '#release_bike raises an error when there are no bikes in dock' do
      it { expect { DockingStation.new.release_bike }.to raise_error('No bikes available') }
    end

    describe "#dock" do
      subject { DockingStation.new }
      it { is_expected.to respond_to(:dock).with(1).argument }
    end

    context "when a bike has been docked" do
      describe "#bikes returns a bike" do
        let (:station) { DockingStation.new }
        let (:bike) { Bike.new }
        before { station.dock bike }
        it { expect(station.bikes).to eq([bike]) }
      end
      describe "#dock raises and error when #{DockingStation::DEFAULT_CAPACITY} bikes already docked" do
        let (:station) { DockingStation.new }
        let (:bike) { Bike.new }
        let (:bike_two) { Bike.new }
        before { DockingStation::DEFAULT_CAPACITY.times { station.dock bike }}
        it { expect { station.dock(bike_two) }.to raise_error('Docking station full') }
      end
    end
end
