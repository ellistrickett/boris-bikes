require 'docking_station'

RSpec.describe DockingStation do
    it { is_expected.to respond_to :release_bike }
  
    it 'releases working bikes' do
      bike = subject.release_bike
      expect(bike).to be_working
    end

   # it { is_expected.to respond_to(:dock).with(1).argument}

   # it { is_expected.to respond_to(:bike)}

    it 'docks something' do 
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
    
  describe '#release_bike' do  
    it 'returns error when empty' do
      expect{ subject.release_bike }.to raise_error 'no bikes in the docking station'
    end
  end

  describe '#dock' do
    it 'raises an error when full' do 
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end