require 'bike'

describe Bike do
  it { is_expected.to respond_to(:working?)}

  it { is_expected.to respond_to(:report_broken) }

  it 'is reported broken' do
    bike = Bike.new
    bike.report_broken
    expect(bike.broken?).to eq true
  end

end 