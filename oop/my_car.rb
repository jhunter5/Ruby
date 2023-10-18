class Mycar
     attr_accessor :color
     attr_reader :year

    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
        @speed = 0
    end

    def speed_up(speed)
        self.speed += speed
    end

    def brake(num)
        self.speed -= num
    end

    def car_off
        self.speed = 0
    end

    def current_speed
        puts "You are now going #{self.speed} mph."
    end

    def spray_paint(color)
        self.color = color
    end
end