require 'date'

class PatientHistory
  attr_reader :patient, :health_note, :administered_drugs

  def initialize(status, patient, doc_or_nurse, drug_giving, date)
    @status = status
    
    @patient = patient
    patient.health_record << self
    
    @drug_giving = drug_giving
    
    @date = date
  end
end