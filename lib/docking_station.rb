require_relative 'bike'

class DockingStation

    attr_reader :bike

    def release_bike
        fail 'no bikes in the docking station' unless @bike
        @bike
    end

    def dock(bike)
        @bike = bike
    end
end

