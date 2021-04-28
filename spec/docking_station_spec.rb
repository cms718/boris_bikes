require "./lib/docking_station.rb"

describe DockingStation do
    describe ".release_bike" do
      subject { DockingStation.new }
        it { is_expected.to respond_to(:release_bike) } 
    end

    describe "#release_bike returns an object that responds #working?" do
      subject { DockingStation.new.release_bike }
      it { is_expected.to respond_to(:working?) }
    end
end
