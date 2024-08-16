require_relative './person.rb'
require_relative './records/appointment'

class Patient < Person
  attr_reader :appointments, :prescriptions

  def initialize(name, address, gender="m")
    super(name, address, gender)
    @appointments = []
    @prescriptions = []
  end

  def patient_details()
    return self
  end

  def make_payment()

  end

  def receieve_report()

  end

  def book_appointment(doc_or_nurse, date)
    Appointment.new(self, doc_or_nurse, date)
  end
end