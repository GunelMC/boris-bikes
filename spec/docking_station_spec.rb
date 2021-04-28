require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'checks if the bike works' do 
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq true
  end 

end