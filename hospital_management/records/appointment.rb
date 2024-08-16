class Appointment
  attr_reader :patient, :operational_staff, :date

  def initialize(patient, operational_staff, date)
    @patient = patient
    patient.appointments << self

    @operational_staff = operational_staff
    operational_staff.appointments << self

    @date = date
  end

  def check_availability()

  end

  def send_confirmation_mail()
    
  end

  def schedule_appointment()

  end
    
  def cancel_appointment()

  end
end