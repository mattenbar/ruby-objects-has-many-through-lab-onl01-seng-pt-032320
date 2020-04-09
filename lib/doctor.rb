class Doctor

  attr_accessor :name, :patient, :appointment
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def appointments
    Apointment.all.select {|appointment| appointment.doctor}
  end

end
