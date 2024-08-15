require_relative './staff'

class Nurse < Operational
  def initialize(name, address, gender='f')
    super(name, address, gender)
  end
end