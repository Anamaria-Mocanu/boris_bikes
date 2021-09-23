require "bike"
describe Bike do
  it "tells you the status of bike" do
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end
end