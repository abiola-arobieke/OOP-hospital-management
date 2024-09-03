require 'date'

class Visit
  attr_reader :patient, :operational_staff

  def initialize(patient, operational_staff)
    @patient = patient
    patient.visit << self

    @operational_staff = operational_staff
    operational_staff.visit << self

    @date = DateTime.now.strftime("%Y/%m/%d")
  end
end