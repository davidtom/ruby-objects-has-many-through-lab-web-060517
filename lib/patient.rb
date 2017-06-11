class Patient
  attr_accessor :name, :appointments
  attr_writer
  attr_reader

  #class attribute(s)

  def initialize(name)
    @name = name
    @appointments = []

  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect{|a| a.doctor}
  end

end
