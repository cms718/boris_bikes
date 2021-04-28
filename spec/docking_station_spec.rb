require "./lib/docking_station.rb"

describe DockingStation do
    describe "#release_bike" do
      subject { DockingStation.new }
        it { is_expected.to respond_to(:release_bike) } 
    end

    describe "#release_bike returns an object that responds #working?" do
      subject { DockingStation.new.release_bike }
      it { is_expected.to respond_to(:working?) }
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
        it { expect(station.bike).to eq(bike) }
      end
    end
end
