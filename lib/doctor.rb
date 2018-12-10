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

  def new_appointment(name, date)
    # binding.pry
    a = Appointment.new(name, date)
    @appointments << a
  end

end
