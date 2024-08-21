require_relative './room'

class Ward < Room
  attr_reader :patients

  def initialize(name, description)
    super(name, description)
    @patients = []
  end

  def add_patient(patient)
    @patients.push(patient)
    patient.ward = self
  end

  def remove_patient(patient)
    @patients.each do |patient|
      if patient == patient
        patient_index = patients.find_index(patient)
        patients.delete_at(patient_index)
      end
    end
  end

  def is_occupied?
    true if patients.length > 10
  end
end