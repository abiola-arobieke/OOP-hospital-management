require_relative '../staff.rb'
# require_relative '../diagnosis/diagnosis.rb'
# require_relative '../../records/prescription.rb'

class Doctor < Operational
  attr_reader :appointments, :prescriptions


  def initialize(name, address, specialization, gender='m', date_joined)
    super(name, address, gender)
    @specialization = specialization
    @date_joined = date_joined
    @availability = false
    @appointments = []
    @prescriptions = []
  end

  def schedule_appointment(patient, doc_or_nurse, date)
    Appointment.new(patient, doc_or_nurse, date)
  end

  def check_patient()

  end

  def add_diagnosis(patient, diagnosis)
    Diagnosis.new(patient, diagnosis)
  end

  def prescribe_drug(patient, prescription)

  end
end