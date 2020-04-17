require_relative 'bike'

class DockingStation
    
    def initialize
        @bikes = []
    end


    def release_bike
        fail 'no bikes in the docking station' if @bikes.empty?
        @bikes.pop
    end

    def dock(bike)
        fail 'Docking station full' if @bikes.count >= 20
        @bikes << bike
    end
end

