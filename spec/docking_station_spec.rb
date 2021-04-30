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
    expect(subject.release_bike).to eq(bike)
  end

    it 'releases a bike when asked for one' do
    # Arrange
    bike = Bike.new
    # Act 
    subject.dock(bike)
    #Assert
    expect(subject.release_bike).to eq(bike)
  end 

  it 'raises a broken bike error' do
    broken_bike = Bike.new
    broken_bike.report_broken
    subject.dock(broken_bike)
    p broken_bike.broken?
    expect { subject.release_bike }. to raise_error('The bike is broken')
  end

  it 'raises an error message when there are no bikes' do
    expect { subject.release_bike }.to raise_error('No bikes in the station')
  end 

    it 'raises an error message when the station is full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error('The station is full')
    end
    
    it 'has a default capacity' do
      expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end 

    describe 'initialization' do 

    it 'has a default capacity' do
      docking_station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times { docking_station.dock Bike.new }
      expect { docking_station.dock Bike.new}.to raise_error('The station is full')
    end

      # subject { DockingStation.new }
      # let(:bike) {Bike.new}

      # it 'has a default capacity' do 
      #   DockingStation::DEFAULT_CAPACITY.times { subject.dock(bike)}
      #   expect(subject.dock(bike)).to raise_error('The station is full')
      # end 

      it 'has a variable capacity' do
        docking_station = DockingStation.new(50)
        50.times { docking_station.dock Bike.new }
        expect { docking_station.dock Bike.new}.to raise_error('The station is full')
      end
    end 
end