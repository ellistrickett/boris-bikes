require 'docking_station'

RSpec.describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    it 'releases working bikes' do
      subject.dock(Bike.new)
      bike = subject.release_bike
      expect(bike).to be_working
    end

   # it { is_expected.to respond_to(:dock).with(1).argument}

   # it { is_expected.to respond_to(:bike)}

    it 'docks something' do 
      bike = Bike.new
      expect(subject.dock(bike)).to include bike
    end

    it 'returns docked bikes' do
      subject.dock(Bike.new)
      bike = subject.release_bike
      expect(bike).to be_working
    end
    
  describe '#release_bike' do  
    it 'returns error when empty' do
      expect{ subject.release_bike }.to raise_error 'no bikes in the docking station'
    end
  end

  describe '#dock' do
    it 'raises an error when full' do 
      subject.capacity.times do
         subject.dock Bike.new
      end
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }

    it 'defaults capacity' do
      # docking_station = DockingStation.new(50)
      described_class::DEFAULT_CAPACITY.times { subject.dock(bike) }

      expect { subject.dock(bike) }.to raise_error 'Docking station full'
    end
  end

end