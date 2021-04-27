require "boris_bikes"

#  describe Bike do
#   it 'works when checked'do
#     expect(subject.is_working?).to eq true
#   end 
describe DockingStation do
  it 'docking_station to be an instance of DockingStation' do
    #expect(DockingStation.new).to eq "docking_station"
    expect("docking_station").to exist 
  end 
 end