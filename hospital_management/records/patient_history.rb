class PatientHistory
  attr_reader :patient, :health_note, :administered_drugs

  def initialize(date, status, patient, adminsted_drugs)
    @date = date
    @status = status

    @patient = patient
    patient.history << self

    @administered_drugs = adminsted_drugs
    adminsted_drugs.history.push(self)

  end

  def patient=(patient)
    @patient = patient
    patient.history.push(self) unless patient.history.include?(self)
  end
end