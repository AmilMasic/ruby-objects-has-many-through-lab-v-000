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

  def new_appointment(date, doctor_name)
    appointment = Appointment.new(date, doctor_name, self)
    doctor = Doctor.new(doctor_name)
    @appointments << appointment
    appointment
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end



end
