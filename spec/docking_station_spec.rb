require "./lib/docking_station.rb"

describe DockingStation do
    describe ".release_bike" do
      subject { DockingStation.new }
        it { is_expected.to respond_to(:release_bike) } 
    end
end