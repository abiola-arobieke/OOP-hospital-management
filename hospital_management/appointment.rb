class Appointment
  attr_reader :patient, :operational_staff, :date

  def initialize(patient, operational_staff, date)
    @patient = patient
    patient.appointment << self

    @operational_staff = operational_staff
    operational_staff.appointment << self

    @date = date
  end
end