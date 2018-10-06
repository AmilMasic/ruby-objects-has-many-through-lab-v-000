class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, self, patient_name)
    patient = Patient.new(patient_name)
    @appointments << appointment
    appointment
  end
end
