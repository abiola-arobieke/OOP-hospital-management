require_relative './staff.rb'

class Doctor < Operational
  def initialize(name, address, gender='m')
    super(name, address, gender)
  end
end