class Appointment

    attr_accessor :date
    @@all = []

    def initialize(date)
      @date = date
      save
    end

    def self.all
      @@all
    end

    def save
      @@all << self
    end
end
