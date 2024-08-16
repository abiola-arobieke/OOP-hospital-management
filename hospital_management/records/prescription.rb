class Prescription
  attr_reader :patient, :operational_staff, :date, :medicine

  def initialize(patient, operational_staff, date, *medicine)
    @patient = patient
    patient.prescriptions << self

    @operational_staff = operational_staff
    operational_staff.prescriptions << self

    @date = date
    @medicine = medicine
  end

end