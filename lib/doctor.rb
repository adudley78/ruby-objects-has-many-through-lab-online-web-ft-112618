require 'pry'

class Doctor
  attr_accessor :name
  # attr_writer :appointments

  @@all = [ ]

  def initialize(name)
    @name = name
    @appointments = [ ]
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    @appointments
  end

  def new_appointment(patient, date)
    a = Appointment.new(date, patient, self)
    # a.doctor = self
    # binding.pry
    @appointments << a
    a
  end

  def patients
    # binding.pry
      appointments.collect {|appointment| appointment.patient}

  end

end
