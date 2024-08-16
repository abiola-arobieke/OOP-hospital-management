require_relative '../staff'

class Nurse < Operational
  def initialize(name, address, ward_assigned,  shift, gender='f')
    super(name, address, gender)
  end

  def give_medicine()

  end

  def check_vitals()
    
  end
end