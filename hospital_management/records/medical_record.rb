class MedicalRecord
  attr_reader :person, :hospital

  def initialize(person, hospital)
    @person = person
    person.medical << self

    @hospital = hospital
    hospital.medical << self
  end
end