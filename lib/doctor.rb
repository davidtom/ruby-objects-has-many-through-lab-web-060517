class Doctor
  attr_accessor :name, :appointments
  attr_writer
  attr_reader

  #class attribute(s)

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect{|a| a.patient}
  end

end
