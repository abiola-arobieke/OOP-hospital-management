require_relative '../staff'
require_relative '../../records/administered_drug'
require_relative '../../records/patient_history'

class Nurse < Operational
  def initialize(name, address, ward_assigned,  shift, gender='f')
    super(name, address, gender)
  end

  def administer_drug(patient, drug, dosage)
    if drug.dosage > dosage
      request = AdministeredDrug.new(dosage)
      administer = drug.administer(request)
      PatientHistory.new("2024-08-09", "Hospitalized", patient, request)
    else
      puts "Insufficient dosage"
    end
    
  end

  def give_medicine()

  end

  def check_vitals()
    
  end
end