class Appointment
  attr_accessor :date, :doctor, :patient
  attr_writer
  attr_reader

  #class attribute(s)

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end



end
