class Patient
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

  def new_appointment
    appointment = Appointment.new(date, doctor_name, self)
    doctor = Doctor.new(doctor_name)
    @appointments << appointment
    appointment
  end
  
    


end
