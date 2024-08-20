require_relative './person.rb'
require_relative './records/appointment'

class Patient < Person
  attr_reader :appointments, :prescriptions, :history, :ward

  def initialize(name, address, gender="m")
    super(name, address, gender)
    @appointments = []
    @prescriptions = []
    @history = []
  end

  def details()
    return self
  end

  def ward=(ward)
    @ward = ward
    ward.patients.push(ward) unless ward.patients.include?(ward)
  end

  def add_to_history(health_note)
    history.append(health_note)
    health_note.patient = self
  end

  def make_payment()

  end

  def receieve_report()

  end

  def book_appointment(doc_or_nurse, date)
    Appointment.new(self, doc_or_nurse, date)
  end
end