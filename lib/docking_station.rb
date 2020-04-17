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
<<<<<<< HEAD
        fail 'Docking station full' if @bikes.count >= 20
        @bikes << bike
=======
        fail 'Docking station full' if @bike
        @bike = bike
>>>>>>> b43422d3747c8b84c56d03031414b82caa53daec
    end
end

