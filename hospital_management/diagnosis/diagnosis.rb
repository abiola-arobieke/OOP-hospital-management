require 'date'

class Diagnosis
  attr_reader :diagnosis_type, :patient

  def initialize(patient, diagnosis_type)
    @patient = patient
    patient.diagnosis << self

    @diagnosis_type = diagnosis_type
    diagnosis_type.diagnosis << self

    @date = DateTime.now.strftime("%Y/%m/%d")
  end
end