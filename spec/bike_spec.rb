require "bike"
describe Bike do
  describe ".working?" do
    subject { Bike.new }
    it { is_expected.to respond_to(:working?)}
  end
end