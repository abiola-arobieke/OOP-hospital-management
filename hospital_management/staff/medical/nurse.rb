require_relative '../staff'
require_relative '../../pharmacy/administer_drug'
require_relative '../../records/patient_history'
require_relative '../../records/appointment'

class Nurse < Operational
  def initialize(name, address, ward_assigned,  shift, gender='f')
    super(name, address, gender)
  end

  def administer_drug(status, patient, drug, dosage, date)
    if drug.dosage > dosage
      patient.status = status
      drug_giving = AdministerDrug.new(patient, drug, dosage, date)
      patient.history(status, self, drug_giving, date)
    else
      puts "Insufficient dosage"
    end
  end

  def schedule_appointment(patient, doc_or_nurse, date)
    Appointment.new(patient, doc_or_nurse, date)
  end
end