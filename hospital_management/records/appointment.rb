require 'date'

class Appointment
  attr_reader :patient, :operational_staff, :date

  def initialize(patient, operational_staff, date)
    @patient = patient
    patient.appointments << self

    @operational_staff = operational_staff
    operational_staff.appointments << self

    @date = DateTime.now.strftime("%Y/%m/%d")
  end
end