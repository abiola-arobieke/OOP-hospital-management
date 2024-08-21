require 'date'

class AdministerDrug
  attr_reader :drug, :patient, :dosage 

  def initialize(patient, drug, dosage, date)
    @patient = patient
    patient.administered << self

    @drug = drug
    drug.administered << self

    @dosage = dosage
    @date = date
  end
end