class Patient
  attr_accessor :name, :appointments, :doctors

  @@all = [ ]

  def initialize(name)
    @name = name
    # @patient = patient
    # @doctor = doctor
    @patients = [ ]
    @appointments = [ ]
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    a = Appointment.new(date, self, doctor)
    # a.patient = self
    # binding.pry
    @appointments << a
    a
  end

  def doctors
    # binding.pry
      appointments.collect {|appointment| appointment.doctor}
  end

end
