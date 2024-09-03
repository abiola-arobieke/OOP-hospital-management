require_relative '../staff'

class Technician < Technical
  def initialize(name, address, gender='m')
    super(name, address, gender)
  end
end
