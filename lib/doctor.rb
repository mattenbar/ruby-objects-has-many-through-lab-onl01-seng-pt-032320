class Doctor

  attr_accessor :name, :patient, :appointment
  @@all = []

  def initialize(name, patient, appointment)
    @name = name
    @patient = patient
    @appointment = appointment
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end
