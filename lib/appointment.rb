class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = [ ]

  def initialize(date, patient, doctor)
    # @name = name
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  # def patient
  #   @patient
  # end

end
