class PatientHistory
  attr_reader :patient, :health_note, :adminsted_drugs

  def initialize(status, date, *adminsted_drugs)
    @status = status
    @date = date
    @adminsted_drugs = adminsted_drugs
  end

  def patient=(patient)
    @patient = patient
    patient.history.push(self) unless patient.history.include?(self)
  end
end