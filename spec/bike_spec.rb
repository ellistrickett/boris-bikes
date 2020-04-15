require 'bike'

RSpec.describe Bike do
    it 'should be working' do 
        expect(subject.working?).to be true
      end
end