class Appointment

    attr_accessor :date, :patient, :doctor
    @@all = []

    def initialize(date, patient, doctor )
      @date = date
      @patient = patient
      @doctor = doctor
      save
    end

    def self.all
      @@all
    end

    def save
      @@all << self
    end

    def patient
      Patient.all.select {|patient| patient.appointment == self}
    end
end
