require_relative './person.rb'
require_relative './records/appointment'

class Patient < Person
  attr_reader :appointments, :prescriptions, :ward, :diagnosis, :visit, :administered, :health_record, :status

  def initialize(name, address, gender="m", status="away")
    super(name, address, gender)
    @appointments = []
    @prescriptions = []
    @health_record = []
    @diagnosis = []
    @visit = []
    @administered = []
    @status = status
  end

  def details()
    return self
  end

  def status=(status)
    @status = status
  end

  def history(status, doc_or_nurse, drug_giving, date)
    PatientHistory.new(status, self, doc_or_nurse, drug_giving, date)
  end

  def ward=(ward)
    @ward = ward
    ward.patients.push(ward) unless ward.patients.include?(ward)
  end

  def book_appointment(doc_or_nurse, date)
    Appointment.new(self, doc_or_nurse, date)
  end

  def add_to_history(health_note)
    history.append(health_note)
    health_note.patient = self
  end

  def make_payment()

  end

  def receieve_report()

  end
end