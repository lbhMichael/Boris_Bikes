require 'Docking_Station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
     bike = Bike.new
     bike = subject.release_bike
     expect(bike).to be_working
   end

  it { is_expected.to respond_to(:dock).with(1).argument}
  it { is_expected.to respond_to(:bikes) }

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to_not be_empty
  end

describe '#release_bike' do
  it 'raises an error when there are no bikes available' do
    5.times{subject.release_bike}
    expect{subject.release_bike}.to raise_error "No bikes available"
    end
  end
end
