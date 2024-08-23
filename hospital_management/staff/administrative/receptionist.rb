require_relative './front_desk'
require_relative '../../patient.rb'
require_relative '../../records/appointment'

class Receptionist < FrontDesk
  def initialize(name, address, gender='m', date_joined)
    super(name, address, gender='m', date_joined)
  end

  def register_patient(name, address, gender="m", status="away")
    Patient.new(name, address, gender, status)
  end

  def schedule_appointment(patient, doc_or_nurse, date)
    Appointment.new(patient, doc_or_nurse, date)
  end
end
