require_relative '../staff.rb'

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
  
  def get_salary()

  end

  def get_hospital_details()

  end

  def check_patient()

  end

  def add_diagnosis(patient, diagnosis)
    
  end

  def prescribe_drug(patient, prescription)

  end

  def receieve_notice()

  end

  def view_roster
    
  end

  def assign_to_patient()

  end
    
  def perform_surgery()

  end
end