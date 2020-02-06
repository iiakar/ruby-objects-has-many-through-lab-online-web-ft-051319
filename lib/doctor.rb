class Doctor
  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date,patient)
    appointment = Appointment.new(patient,date,self)
    @appointments << appointment
    appointment
  end

  def appointment
    Appointment.collect do |appointment|
      appoinment.doctor == self
    end
  end

  def patients
    @appointments.collect do |appointment|
    appointment.patient
  end
end
end
