require "Docking_station"
describe DockingStation do 
  it { is_expected.to respond_to :release_bike }
  # it "releases a bike" do
    
  #   # docking_station = DockingStation.new("bike")
  
    
  #   # expect(docking_station.release_bike).to eq("bike")
  #   #expect(dockin_station.release_bike).to eq([])
  # end

  it "expects the bike to work" do
    bike = Bike.new

    expect(bike.working?).to eq(true)
  end

  it "expects to dock bike" do
    docking_station = DockingStation.new
    bike = Bike.new

    expect(docking_station.dock(bike)).to eq([bike])
  end

  # it "tells if docking_station has space" do
  #   docking_station = DockingStation.new

  #   expect(docking_station.status).to eq([])
  # end
  it { is_expected.to respond_to :status}

  it "raises error if dock is empty" do 
    docking_station = DockingStation.new
    
    expect { docking_station.release_bike }.to raise_error("Cannot take bike, dock empty")
  end
end