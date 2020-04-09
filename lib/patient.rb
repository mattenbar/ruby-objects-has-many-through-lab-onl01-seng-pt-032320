class Patient

  attr_accessor :name, :doctor
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
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.map {|appointment| appointment.doctor}
  end

  def new_appointment(date, doctor)
    Appointment.new(doctor, date, self)
  end
end
