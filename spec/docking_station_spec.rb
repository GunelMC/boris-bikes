require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  # it 'checks if the bike works' do 
  #   docking_station = DockingStation.new
  #   bike = docking_station.release_bike
  #   expect(bike.working?).to eq true
  # end 

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'shows docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

    it 'releases a bike when asked for one' do
    # Arrange
    bike = Bike.new
    # Act 
    subject.dock(bike)
    #Assert
    expect(subject.release_bike).to eq(bike)
  end 

  it 'raises an error message when there are no bikes' do
    expect { subject.release_bike }.to raise_error('No bikes in the station')
  end 

  describe '#dock' do
    it 'raises an error message when the station is full' do
      subject.dock(Bike.new)
      expect {subject.dock(Bike.new)}.to raise_error('The station is full')
    end
  end
end