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

  def new_appointment(date, patient_name)
    appointment = Appointment.new(date, self, patient_name)
    patient = Patient.new(patient_name)
    @appointments << appointment
    appointment
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
end
